/* eslint-disable @typescript-eslint/no-unused-vars */
import React from "react";
import Acceuil from "../views/Accueil/Acceuil";
import ListeArticles from "../views/Articles/ListeArticles";
import ServiceList from "../views/servicesview/ServiceList";
import NavBarCmp from "../components/NavBarCmp";
import { useRoutes, RouteObject, Navigate } from "react-router-dom";
import EmployeeList from "../views/employee/EmployeeList";
import DemandeService from "../views/demandeservice/DemandeService";
import LoginForm from "../views/login/Login";
import DevisList from "../views/devis/DevisList";
import JournalService from "../views/JournalServices/JournalServices";
import DetailsDemande from "../views/JournalServices/detailsDemande/DetailsDemande";
import MainDemandeService from "../views/demandeservice/MainDemandeService";
import FactureCmp from '../views/facture/FactureCmp';
import ListFacture from "../views/facture/ListFacture";
import FactureEditable from "../views/facture/customFacture/FactureEditable";
import MainFacture from "../views/facture/MainFacture";
import Register from "../views/register/Register";

const ProtectedRoute = ({ children }: { children: React.ReactNode }) => {
  const token = localStorage.getItem('token');
  if (!token) {
    return <Navigate to="/login" replace />;
  }
  return <>{children}</>;
};

const Router: React.FC = () => {
  const routes: RouteObject[] = [
    {
      path: "/",
      element: <LoginForm/>
    },
    {
      path: "/register",
      element: <Register />
    },
    {
      path: "/baraka",
      element: <ProtectedRoute><NavBarCmp /></ProtectedRoute>,
      children: [
        {
          path: "/baraka",
          element: <ProtectedRoute><Acceuil /></ProtectedRoute>,
        },
        {
          path: "accueil",
          element: <ProtectedRoute><Acceuil /></ProtectedRoute>,
        },
        {
          path: "listearticle",
          element: <ProtectedRoute><ListeArticles /></ProtectedRoute>,
        },
        {
          path: "listeservice",
          element: <ProtectedRoute><ServiceList /></ProtectedRoute>,
        },
        {
          path: "listeemployee",
          element: <ProtectedRoute><EmployeeList /></ProtectedRoute>,
        },
        {
          path: "demandeservice",
          element: <ProtectedRoute><MainDemandeService /></ProtectedRoute>,
        },
        {
          path: "journalservice",
          element: <ProtectedRoute><JournalService /></ProtectedRoute>,
        },
        {
          path: "detailsDemandeService",
          element: <ProtectedRoute><DetailsDemande /></ProtectedRoute>,
        },
        {
          path: "listeDevis",
          element: <ProtectedRoute><DevisList /></ProtectedRoute>,
        },
        {
          path: "listefacture",
          element: <ProtectedRoute><ListFacture /></ProtectedRoute>,
        },
      ],
    },
    {
      path: "facture",
      element: <ProtectedRoute><FactureCmp /></ProtectedRoute>,
    },
    {
      path: "createfact",
      element: <ProtectedRoute><MainFacture /></ProtectedRoute>,
    },
    {
      path: "editfact",
      element: <ProtectedRoute><MainFacture /></ProtectedRoute>,
    },
    {
      path: "showfact",
      element: <ProtectedRoute><MainFacture /></ProtectedRoute>,
    },
    {
      path: "creerfact",
      element: <ProtectedRoute><MainFacture /></ProtectedRoute>,
    },
    {
      path: "/login",
      element: <LoginForm />,
    },
  ];

  return useRoutes(routes);
};

export default Router;
