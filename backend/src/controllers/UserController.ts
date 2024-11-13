import { Request, Response } from 'express';
import User from '../models/User';
import jwt from 'jsonwebtoken';

// Login a user
export const loginUser = async (req: Request, res: Response) => {
    try {
        const { login, pwd } = req.body;
        const user = await User.findOne({ where: { login } });

        if (user && await user.comparePassword(pwd)) {
            const token = jwt.sign(
                { id: user.id, login: user.login },
                process.env.JWT_SECRET || 'your-secret-key',
                { expiresIn: '24h' }
            );
            res.status(200).json({ message: 'Login successful', token, user });
        } else {
            res.status(401).json({ error: 'Invalid login or password' });
        }
    } catch (error) {
        res.status(500).json({ error: 'Failed to login user' });
    }
};

// Register a user (temporary endpoint - remove in production)
export const registerUser = async (req: Request, res: Response) => {
    try {
        const user = await User.create(req.body);
        res.status(201).json({ message: 'User created successfully', user });
    } catch (error) {
        res.status(500).json({ error: 'Failed to create user' });
    }
};