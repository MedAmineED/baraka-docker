import axiosInstance from '../utils/axios';
import Article from "src/entities/Article";

interface getType {
    totalCount : number, 
    articleList : Article[]
}

class ArticleServices {
    async GetListArticle(endpoint: string): Promise<getType> {
        try {
          const response = await axiosInstance.get<getType>(endpoint);
          return response.data;
        } catch (error) {
          console.error("Error fetching data:", error);
          throw error;
        }
    }

    async GetArticleById(endpoint: string, id : number): Promise<Article> {
        try {
          const response = await axiosInstance.get<Article>(`${endpoint}/${id}`);
          return response.data;
        } catch (error) {
          console.error("Error fetching data:", error);
          throw error;
        }
    }

    async AddArticle(endpoint: string, article: Article): Promise<Article> {
      try {
        const response = await axiosInstance.post<Article>(endpoint, article);
        return response.data;
      } catch (error) {
        console.error("Error adding article:", error);
        throw error;
      }
    }

    async UpdateArticle(endpoint: string, id : number, article: Article): Promise<Article> {
      try {
        const response = await axiosInstance.put<Article>(`${endpoint}/${id}`, article);
        return response.data;
      } catch (error) {
        console.error("Error adding article:", error);
        throw error;
      }
    }

    async DeleteArticle(endpoint: string, id : number): Promise<Article> {
      try {
        const response = await axiosInstance.delete<Article>(`${endpoint}/${id}`);
        return response.data;
      } catch (error) {
        console.error("Error adding article:", error);
        throw error;
      }
    }
}

export default new ArticleServices();