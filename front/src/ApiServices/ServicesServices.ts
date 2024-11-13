import axiosInstance from '../utils/axios';
import ServiceEntity from "src/entities/ServiceEntity";

interface getType {
  totalCount: number;
  serviceList: ServiceEntity[];
}

class ServiceServices {

  async GetListService(endpoint: string): Promise<getType> {
    try {
      const response = await axiosInstance.get<getType>(endpoint);
      return response.data;
    } catch (error) {
      console.error("Error fetching data:", error);
      throw error;
    }
  }

  async GetServiceById(endpoint: string, id: number): Promise<ServiceEntity> {
    try {
      const response = await axiosInstance.get<ServiceEntity>(`${endpoint}/${id}`);
      return response.data;
    } catch (error) {
      console.error("Error fetching data:", error);
      throw error;
    }
  }

  async AddService(endpoint: string, service: ServiceEntity): Promise<ServiceEntity> {
    try {
      const response = await axiosInstance.post<ServiceEntity>(endpoint, service);
      return response.data;
    } catch (error) {
      console.error("Error adding service:", error);
      throw error;
    }
  }

  async UpdateService(endpoint: string, id: number, service: ServiceEntity): Promise<ServiceEntity> {
    try {
      const response = await axiosInstance.put<ServiceEntity>(`${endpoint}/${id}`, service);
      return response.data;
    } catch (error) {
      console.error("Error updating service:", error);
      throw error;
    }
  }

  async DeleteService(endpoint: string, id: number): Promise<ServiceEntity> {
    try {
      const response = await axiosInstance.delete<ServiceEntity>(`${endpoint}/${id}`);
      return response.data;
    } catch (error) {
      console.error("Error deleting service:", error);
      throw error;
    }
  }

}

export default new ServiceServices();
