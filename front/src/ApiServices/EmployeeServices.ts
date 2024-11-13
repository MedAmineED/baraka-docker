import axios from "axios";
import Employee from "src/entities/Employee";
import axiosInstance from '../utils/axios';

interface GetType {
    totalCount: number; 
    employeeList: Employee[];
}

class EmployeeServices {

    async GetListEmployee(endpoint: string): Promise<GetType> {
        try {
            const response = await axiosInstance.get<GetType>(endpoint, {
                headers: {
                    Authorization: `Bearer token`,
                },
            });
            return response.data;
        } catch (error) {
            console.error("Error fetching employees:", error);
            throw error;
        }
    }

    async GetEmployeeById(endpoint: string, id: number): Promise<Employee> {
        try {
            const response = await axiosInstance.get<Employee>(`${endpoint}/${id}`, {
                headers: {
                    Authorization: `Bearer token`,
                },
            });
            return response.data;
        } catch (error) {
            console.error("Error fetching employee:", error);
            throw error;
        }
    }

    async AddEmployee(endpoint: string, employee: Employee): Promise<Employee> {
        try {
            const response = await axiosInstance.post<Employee>(endpoint, employee, {
                headers: {
                    Authorization: `Bearer token`,
                    'Content-Type': 'application/json',
                },
            });
            return response.data;
        } catch (error) {
            console.error("Error adding employee:", error);
            throw error;
        }
    }

    async UpdateEmployee(endpoint: string, id: number, employee: Employee): Promise<Employee> {
        try {
            const response = await axiosInstance.put<Employee>(`${endpoint}/${id}`, employee, {
                headers: {
                    Authorization: `Bearer token`,
                    'Content-Type': 'application/json',
                },
            });
            return response.data;
        } catch (error) {
            console.error("Error updating employee:", error);
            throw error;
        }
    }

    async DeleteEmployee(endpoint: string, id: number): Promise<Employee> {
        try {
            const response = await axiosInstance.delete<Employee>(`${endpoint}/${id}`, {
                headers: {
                    Authorization: `Bearer token`,
                    'Content-Type': 'application/json',
                },
            });
            return response.data;
        } catch (error) {
            console.error("Error deleting employee:", error);
            throw error;
        }
    }
}

export default new EmployeeServices();
