import axiosInstance from '../utils/axios';
import Famille from "src/entities/Famille";

class FamilleServices {
    async GetListFamille(endpoint: string): Promise<Famille[]> {
        try {
          const response = await axiosInstance.get<Famille[]>(endpoint);
          return response.data;
        } catch (error) {
          console.error("Error fetching data:", error);
          throw error;
        }
    }

    async GetFamilleById(endpoint: string, id: number): Promise<Famille> {
        try {
            const response = await axiosInstance.get<Famille>(`${endpoint}/${id}`);
            return response.data;
        } catch (error) {
            console.error("Error fetching famille:", error);
            throw error;
        }
    }

    async AddFamille(endpoint: string, famille: Famille): Promise<Famille> {
        try {
            const response = await axiosInstance.post<Famille>(endpoint, famille);
            return response.data;
        } catch (error) {
            console.error("Error adding famille:", error);
            throw error;
        }
    }

    async UpdateFamille(endpoint: string, id: number, famille: Famille): Promise<Famille> {
        try {
            const response = await axiosInstance.put<Famille>(`${endpoint}/${id}`, famille);
            return response.data;
        } catch (error) {
            console.error("Error updating famille:", error);
            throw error;
        }
    }

    async DeleteFamille(endpoint: string, id: number): Promise<void> {
        try {
            await axiosInstance.delete(`${endpoint}/${id}`);
        } catch (error) {
            console.error("Error deleting famille:", error);
            throw error;
        }
    }
}

export default new FamilleServices();