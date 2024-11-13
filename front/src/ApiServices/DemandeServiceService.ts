import axiosInstance from '../utils/axios';
import DemandeServiceEntity from 'src/entities/DemandeServiceEntity';

interface getType {
    totalCount : number, 
    demandeServiceList : DemandeServiceEntity[]
}

class DemandeServiceServices {
    
    async GetListDemandeService(endpoint: string): Promise<getType> {
        try {
            const response = await axiosInstance.get<getType>(endpoint);
            return response.data;
        } catch (error) {
            console.error("Error fetching data:", error);
            throw error;
        }
    } 

    async GetDemandeServiceById(endpoint: string, id: number): Promise<DemandeServiceEntity> {
        try {
            const response = await axiosInstance.get<DemandeServiceEntity>(`${endpoint}/${id}`);
            return response.data;
        } catch (error) {
            console.error("Error fetching data:", error);
            throw error;
        }
    }

    async AddDemandeService(endpoint: string, demandeService: DemandeServiceEntity): Promise<DemandeServiceEntity> {
        try {
            const response = await axiosInstance.post<DemandeServiceEntity>(endpoint, demandeService);
            return response.data;
        } catch (error) {
            console.error("Error adding DemandeService:", error);
            throw error;
        }
    }

    async UpdateDemandeService(endpoint: string, id: number, demandeService: DemandeServiceEntity): Promise<DemandeServiceEntity> {
        try {
            const response = await axiosInstance.put<DemandeServiceEntity>(`${endpoint}/${id}`, demandeService);
            return response.data;
        } catch (error) {
            console.error("Error updating DemandeService:", error);
            throw error;
        }
    }

    async DeleteDemandeService(endpoint: string, id: number): Promise<DemandeServiceEntity> {
        try {
            const response = await axiosInstance.delete<DemandeServiceEntity>(`${endpoint}/${id}`);
            return response.data;
        } catch (error) {
            console.error("Error deleting DemandeService:", error);
            throw error;
        }
    }
}

export default new DemandeServiceServices();
