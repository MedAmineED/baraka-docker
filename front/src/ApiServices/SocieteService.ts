import axios from "axios";
import Societe from "../entities/Societe";
import axiosInstance from '../utils/axios';



class SocieteServices {
    async GetListSociete(endpoint: string): Promise<Societe[]> {
        try {
          const response = await axiosInstance.get<Societe[]>(endpoint, {
            headers: {
              Authorization: `Bearer token`,
            },
          });
          console.log(response.data)
          return response.data;
        } catch (error) {
          console.error("Error fetching data:", error);
          throw error;
        }
      }
}

export default new SocieteServices();