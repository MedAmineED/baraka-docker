import axios from "axios";
import Paiement from "src/entities/Paiement";
import axiosInstance from '../utils/axios';


interface GetType {
    totalCount: number;
    paiementList: Paiement[];
}

class PaiementService {

    async GetSum(endpoint: string, demId: number): Promise<number> {
        try {
            const response = await axiosInstance.get<number>(`${endpoint}/sum/${demId}`, {
                headers: {
                    Authorization: `Bearer token`,
                },
            });
            return response.data;
        } catch (error) {
            console.error("Error fetching paiement sum:", error);
            throw error;
        }
    }

    async AddTimbreFiscal(endpoint: string, demId: number, prixFinal : number): Promise<number> {
        try {
            const response = await axiosInstance.post<number>(`${endpoint}/addtimbre/${demId}`, {prix_ttc : prixFinal}, {
                headers: {
                    Authorization: `Bearer token`,
                },
            });
            return response.data;
        } catch (error) {
            console.error("Error fetching paiement sum:", error);
            throw error;
        }
    }

    async PaiementOperation(endpoint: string, demId: number, prixFinale: number, paiement : Paiement): Promise<number> {
        try {
            await this.AddTimbreFiscal(endpoint, demId, prixFinale);
            const response = await axiosInstance.post<number>(`${endpoint}/paimentoperation/${demId}`, paiement, {
                headers: {
                    Authorization: `Bearer token`,
                },
            });
            return response.data;
        } catch (error) {
            console.error("Error fetching paiement sum:", error);
            throw error;
        }
    }

    async GetListPaiements(endpoint: string, demId: number): Promise<Paiement[]> {
        try {
            const response = await axiosInstance.get<Paiement[]>(`${endpoint}/${demId}`, {
                headers: {
                    Authorization: `Bearer token`,
                },
            });
            return response.data;
        } catch (error) {
            console.error("Error fetching paiements:", error);
            return [];
        }
    }

    async GetPaiementById(endpoint: string, id: number): Promise<Paiement> {
        try {
            const response = await axiosInstance.get<Paiement>(`${endpoint}/${id}`, {
                headers: {
                    Authorization: `Bearer token`,
                },
            });
            return response.data;
        } catch (error) {
            console.error("Error fetching paiement:", error);
            throw error;
        }
    }

    async AddPaiement(endpoint: string, paiement: Paiement): Promise<Paiement> {
        try {
            const response = await axiosInstance.post<Paiement>(endpoint, paiement, {
                headers: {
                    Authorization: `Bearer token`,
                    'Content-Type': 'application/json',
                },
            });
            return response.data;
        } catch (error) {
            console.error("Error adding paiement:", error);
            throw error;
        }
    }

    async UpdatePaiement(endpoint: string, id: number, paiement: Paiement): Promise<Paiement> {
        try {
            const response = await axiosInstance.put<Paiement>(`${endpoint}/${id}`, paiement, {
                headers: {
                    Authorization: `Bearer token`,
                    'Content-Type': 'application/json',
                },
            });
            return response.data;
        } catch (error) {
            console.error("Error updating paiement:", error);
            throw error;
        }
    }

    async DeletePaiement(endpoint: string, id: number): Promise<Paiement> {
        try {
            const response = await axiosInstance.delete<Paiement>(`${endpoint}/${id}`, {
                headers: {
                    Authorization: `Bearer token`,
                    'Content-Type': 'application/json',
                },
            });
            return response.data;
        } catch (error) {
            console.error("Error deleting paiement:", error);
            throw error;
        }
    }
}

export default new PaiementService();
