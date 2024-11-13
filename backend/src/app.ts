import express, { Express } from "express";
import { Connection } from "./DBconfig/ConnexionDB";
import categorieServiceRoutes from "./routes/categorieServiceRoutes";
import serviceRoutes from "./routes/serviceRoutes";
import demandeServiceRoutes from "./routes/demandeServiceRoutes";
import ligneServicesRoutes from "./routes/LigneDemande";
import paiementRoutes from "./routes/paiementRoutes";
import articleRoutes from "./routes/articleRoutes";
import familleRoutes from "./routes/familleRoutes";
import cors from "cors";
import employeeRoutes from "./routes/employeeRoutes";
import societeRoutes from "./routes/societeRouter";
import factureRoutes from "./routes/factureRoutes";
import helmet from "helmet";
import dotenv from 'dotenv';
import { auth } from './middleware/auth';
import authRoutes from './routes/authRoutes';

// Load environment variables
dotenv.config();

const app: Express = express();

// Define allowed origins
const allowedOrigins = [
  'http://localhost:3000',
  'http://localhost:3050',
  'http://172.25.0.4:3000',
  'http://172.21.0.4:3000',
  // Add any other local IPs that need access
  process.env.FRONTEND_URL,
].filter(Boolean);

// CORS configuration
app.use(cors({
  origin: [
    'http://localhost:3000',
    'http://localhost:4173',
    'http://172.25.0.4:3000',
    'http://172.19.0.4:3000',
    'http://172.21.0.4:3000',
    process.env.CORS_ORIGIN +"",
  ].filter(Boolean),
  methods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS'],
  credentials: true,
  allowedHeaders: ['Content-Type', 'Authorization'],
}));

// Serve static files

// Updated Helmet configuration
app.use(
  helmet({
    contentSecurityPolicy: {
      directives: {
        defaultSrc: ["'self'"],
        scriptSrc: ["'self'", "'unsafe-inline'", "'unsafe-eval'"],
        styleSrc: ["'self'", "'unsafe-inline'"],
        imgSrc: ["'self'", "data:", "blob:", "http:", "https:"],
        connectSrc: ["'self'", "http:", "https:"],
        fontSrc: ["'self'", "data:", "http:", "https:"],
        objectSrc: ["'none'"],
        mediaSrc: ["'self'", "data:", "http:", "https:"],
        frameSrc: ["'self'"],
        workerSrc: ["'self'", "blob:"],
      },
    },
    crossOriginEmbedderPolicy: false,
    crossOriginResourcePolicy: { policy: "cross-origin" },
  })
);

// Body parser middleware
app.use(express.json({ limit: '50mb' }));
app.use(express.urlencoded({ extended: true, limit: '50mb' }));

// Error handling middleware
app.use((err: Error, req: express.Request, res: express.Response, next: express.NextFunction) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});

// API Routes
const API_PREFIX = '/api';
app.use(`${API_PREFIX}/auth`, authRoutes);

// Protected routes - all routes should require authentication except auth
app.use(`${API_PREFIX}/categories`, auth, categorieServiceRoutes);
app.use(`${API_PREFIX}/services`, auth, serviceRoutes);
app.use(`${API_PREFIX}/demande-services`, auth, demandeServiceRoutes);
app.use(`${API_PREFIX}/ligne-services`, auth, ligneServicesRoutes);
app.use(`${API_PREFIX}/paiements`, auth, paiementRoutes);
app.use(`${API_PREFIX}/articles`, auth, articleRoutes);
app.use(`${API_PREFIX}/familles`, auth, familleRoutes);
app.use(`${API_PREFIX}/employees`, auth, employeeRoutes);
app.use(`${API_PREFIX}/facture`, auth, factureRoutes);
app.use(`${API_PREFIX}/societe`, auth, societeRoutes);

// Health check endpoint
app.get('/health', (req, res) => {
  res.status(200).send('OK');
});

// Start server
const PORT = process.env.PORT || 3050;
const HOST = process.env.HOST || '0.0.0.0';

const startServer = async () => {
  try {
    await Connection();
    app.listen(PORT as number, HOST, () => {
      console.log(`Server running at http://${HOST}:${PORT}`);
      console.log(`API endpoints available at http://${HOST}:${PORT}${API_PREFIX}`);
    });
  } catch (error) {
    console.error('Failed to start server:', error);
    process.exit(1);
  }
};

startServer();

// Handle uncaught exceptions
process.on('uncaughtException', (error) => {
  console.error('Uncaught Exception:', error);
  process.exit(1);
});

// Handle unhandled promise rejections
process.on('unhandledRejection', (reason, promise) => {
  console.error('Unhandled Rejection at:', promise, 'reason:', reason);
  process.exit(1);
});

export default app;