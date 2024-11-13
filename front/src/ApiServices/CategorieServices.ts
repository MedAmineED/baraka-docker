import axiosInstance from '../utils/axios';
import Categorie from "src/entities/Categorie";

class CategorieServices {
    async GetListCategorie(endpoint: string): Promise<Categorie[]> {
        try {
          const response = await axiosInstance.get<Categorie[]>(endpoint);
          return response.data;
        } catch (error) {
          console.error("Error fetching categories:", error);
          throw error;
        }
    }

    async GetCategorieById(endpoint: string, id: number): Promise<Categorie> {
        try {
            const response = await axiosInstance.get<Categorie>(`${endpoint}/${id}`);
            return response.data;
        } catch (error) {
            console.error("Error fetching category:", error);
            throw error;
        }
    }

    async AddCategorie(endpoint: string, categorie: Categorie): Promise<Categorie> {
        try {
            const response = await axiosInstance.post<Categorie>(endpoint, categorie);
            return response.data;
        } catch (error) {
            console.error("Error adding category:", error);
            throw error;
        }
    }

    async UpdateCategorie(endpoint: string, id: number, categorie: Categorie): Promise<Categorie> {
        try {
            const response = await axiosInstance.put<Categorie>(`${endpoint}/${id}`, categorie);
            return response.data;
        } catch (error) {
            console.error("Error updating category:", error);
            throw error;
        }
    }

    async DeleteCategorie(endpoint: string, id: number): Promise<void> {
        try {
            await axiosInstance.delete(`${endpoint}/${id}`);
        } catch (error) {
            console.error("Error deleting category:", error);
            throw error;
        }
    }
}

export default new CategorieServices();