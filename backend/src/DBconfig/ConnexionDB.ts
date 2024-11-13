// import User from "./models/User";

import { Sequelize } from "sequelize-typescript";
import Famille from "../models/Famille";
import Article from "../models/Article";
import Employee from "../models/Employee";
import CategorieService from "../models/CategorieService";
import Service from "../models/Service";
import User from "../models/User";
import DemandeService from "../models/DemandeService";
import LigneServices from "../models/LigneDemande";
import Paiement from "../models/Paiement";
import Societe from "../models/Societe";
import Facture from "../models/Facture";
import LigneFacture from "../models/LigneFacture";

// const { Seq } = require('sequelize');
// const User = require('../models/User');
// const userModel = require('../models/User');
require('dotenv').config();
const sequelizeConnexion = new Sequelize({
    logging: false,
    dialect: 'postgres',
    host: process.env.DB_HOST, 
    username: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME,
    port: Number(process.env.DB_PORT),
    models: [ 
              Famille, 
              Article, 
              Employee, 
              CategorieService, 
              Service, 
              User, 
              DemandeService, 
              LigneServices, 
              Paiement, 
              Societe,
              Facture,
              LigneFacture
            ],
  });


export const Connection = async (): Promise<void> => {
  const maxRetries = 5;
  let attempts = 0;

  while (attempts < maxRetries) {
      try {
          await sequelizeConnexion.authenticate();
          console.log('Database connection has been established successfully.');
          await sequelizeConnexion.sync({ alter: true }); // Sync models
          break;  // Exit the loop on successful connection
      } catch (error) {
          attempts++;
          console.error('Unable to connect to the database. Attempt:', attempts, error);
          await new Promise(resolve => setTimeout(resolve, 2000)); // Wait 2 seconds before retrying
      }
  }

  if (attempts === maxRetries) {
      console.error('Max connection attempts reached. Exiting.');
      process.exit(1);  // Exit the process if the max attempts are reached
  }
};


export default sequelizeConnexion;




  