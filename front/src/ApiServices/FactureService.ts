import axiosInstance from '../utils/axios';
import Facture from '../entities/Facture';

interface getType {
    totalCount: number;
    factureList: Facture[];
}

class FactureService {
    
    async GetListFacture(endpoint: string): Promise<getType> {
        try {
            const response = await axiosInstance.get<getType>(endpoint);
            return response.data;
        } catch (error) {
            console.error("Error fetching factures:", error);
            throw error;
        }
    }

    async GetFactureById(endpoint: string, id: number): Promise<Facture> {
        try {
            const response = await axiosInstance.get<Facture>(`${endpoint}/${id}`);
            return response.data;
        } catch (error) {
            console.error("Error fetching facture:", error);
            throw error;
        }
    }

    async GetFactureByIdDem(endpoint: string, id: number): Promise<Facture> {
        try {
            const response = await axiosInstance.get<Facture>(`${endpoint}/bydemande/${id}`);
            return response.data;
        } catch (error) {
            console.error("Error fetching facture by demande:", error);
            throw error;
        }
    }

    async getLatestNumber(endpoint: string): Promise<number> {
        try {
            const response = await axiosInstance.get<{latestnumber : number}>(`${endpoint}/latestnumber`);
            return response.data.latestnumber;
        } catch (error) {
            console.error("Error getting latest number:", error);
            throw error;
        }
    }

    async AddFacture(endpoint: string, facture: Facture): Promise<Facture> {
        try {
            const response = await axiosInstance.post<Facture>(endpoint, facture);
            return response.data;
        } catch (error) {
            console.error("Error adding facture:", error);
            throw error;
        }
    }

    async UpdateFacture(endpoint: string, id: number, facture: Facture): Promise<Facture> {
        try {
            const response = await axiosInstance.put<Facture>(`${endpoint}/${id}`, facture);
            return response.data;
        } catch (error) {
            console.error("Error updating facture:", error);
            throw error;
        }
    }

    async DeleteFacture(endpoint: string, id: number): Promise<Facture> {
        try {
            const response = await axiosInstance.delete<Facture>(`${endpoint}/${id}`);
            return response.data;
        } catch (error) {
            console.error("Error deleting facture:", error);
            throw error;
        }
    }
}

export default new FactureService();
