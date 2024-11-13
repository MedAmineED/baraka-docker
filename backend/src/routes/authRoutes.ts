import { Router } from 'express';
import { loginUser, registerUser } from '../controllers/UserController';

const authRoutes = Router();

// Login route
authRoutes.post('/login', loginUser);

// Register route (temporary - remove in production)
authRoutes.post('/register', registerUser);

export default authRoutes;
