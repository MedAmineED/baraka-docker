PGDMP                  
    |            barakaservice     17.0 (Ubuntu 17.0-1.pgdg24.04+1)     17.0 (Ubuntu 17.0-1.pgdg24.04+1) �   *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            -           1262    21115    barakaservice    DATABASE     y   CREATE DATABASE barakaservice WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE barakaservice;
                     postgres    false            �            1259    58603    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         heap r       postgres    false            �            1259    21116    societe    TABLE     �   CREATE TABLE public.societe (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    tel character varying(255),
    adresse character varying(255),
    codetva integer
);
    DROP TABLE public.societe;
       public         heap r       postgres    false            �            1259    21121    tarticle    TABLE     �  CREATE TABLE public.tarticle (
    id integer NOT NULL,
    identification character varying(255),
    designation character varying(255),
    qte integer,
    qte_min integer,
    qte_max integer,
    prix_achat double precision,
    prix_vente double precision,
    tva double precision,
    etat integer DEFAULT 1,
    inventaire integer DEFAULT 0,
    annee integer,
    "familleId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.tarticle;
       public         heap r       postgres    false            �            1259    21128    tarticle_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tarticle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tarticle_id_seq;
       public               postgres    false    218            .           0    0    tarticle_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tarticle_id_seq OWNED BY public.tarticle.id;
          public               postgres    false    219            �            1259    21129    tcategorieservice    TABLE     g   CREATE TABLE public.tcategorieservice (
    id integer NOT NULL,
    libelle character varying(255)
);
 %   DROP TABLE public.tcategorieservice;
       public         heap r       postgres    false            �            1259    21132    tcategorieservice_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tcategorieservice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tcategorieservice_id_seq;
       public               postgres    false    220            /           0    0    tcategorieservice_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tcategorieservice_id_seq OWNED BY public.tcategorieservice.id;
          public               postgres    false    221            �            1259    21133    tdemandeservice    TABLE     2  CREATE TABLE public.tdemandeservice (
    id_dem integer NOT NULL,
    date_demande timestamp with time zone NOT NULL,
    matricule character varying(255) NOT NULL,
    conducteur character varying(255) NOT NULL,
    employer character varying(255) NOT NULL,
    heure_deb character varying(255) NOT NULL,
    heure_fin character varying(255) NOT NULL,
    client character varying(255) NOT NULL,
    bon_commande character varying(255) NOT NULL,
    prix_ttc double precision NOT NULL,
    payer integer NOT NULL,
    marque character varying(255) NOT NULL
);
 #   DROP TABLE public.tdemandeservice;
       public         heap r       postgres    false            �            1259    21138    tdemandeservice_id_dem_seq    SEQUENCE     �   CREATE SEQUENCE public.tdemandeservice_id_dem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tdemandeservice_id_dem_seq;
       public               postgres    false    222            0           0    0    tdemandeservice_id_dem_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tdemandeservice_id_dem_seq OWNED BY public.tdemandeservice.id_dem;
          public               postgres    false    223            �            1259    21139 	   temployee    TABLE     �  CREATE TABLE public.temployee (
    id integer NOT NULL,
    cin character varying(12),
    nom character varying(75) NOT NULL,
    recrutement timestamp with time zone NOT NULL,
    mobile character varying(12) NOT NULL,
    salaire double precision,
    specialite integer,
    etat integer DEFAULT 1,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.temployee;
       public         heap r       postgres    false            �            1259    21143    temployee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.temployee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.temployee_id_seq;
       public               postgres    false    224            1           0    0    temployee_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.temployee_id_seq OWNED BY public.temployee.id;
          public               postgres    false    225            �            1259    21144    tfacture    TABLE     �  CREATE TABLE public.tfacture (
    id_fact integer NOT NULL,
    date_facture timestamp with time zone NOT NULL,
    client character varying(255) NOT NULL,
    id_dem integer,
    num_fact character varying(255) NOT NULL,
    pht double precision NOT NULL,
    tax double precision NOT NULL,
    remise_total double precision NOT NULL,
    timbre_fiscal double precision NOT NULL,
    prix_ttc double precision NOT NULL
);
    DROP TABLE public.tfacture;
       public         heap r       postgres    false            �            1259    21149    tfacture_id_fact_seq    SEQUENCE     �   CREATE SEQUENCE public.tfacture_id_fact_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tfacture_id_fact_seq;
       public               postgres    false    226            2           0    0    tfacture_id_fact_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tfacture_id_fact_seq OWNED BY public.tfacture.id_fact;
          public               postgres    false    227            �            1259    21150    tfamille    TABLE     �   CREATE TABLE public.tfamille (
    id integer NOT NULL,
    famille character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.tfamille;
       public         heap r       postgres    false            �            1259    21153    tfamille_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tfamille_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tfamille_id_seq;
       public               postgres    false    228            3           0    0    tfamille_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tfamille_id_seq OWNED BY public.tfamille.id;
          public               postgres    false    229            �            1259    21154    tlignedemande    TABLE     �  CREATE TABLE public.tlignedemande (
    id_ligne integer NOT NULL,
    demande_srv integer,
    type character varying(255) NOT NULL,
    categorie character varying(255),
    element integer,
    reference character varying(255),
    designation character varying(255),
    prix double precision,
    tva double precision,
    remise double precision,
    quantite integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public.tlignedemande;
       public         heap r       postgres    false            �            1259    21159    tlignedemande_id_ligne_seq    SEQUENCE     �   CREATE SEQUENCE public.tlignedemande_id_ligne_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tlignedemande_id_ligne_seq;
       public               postgres    false    230            4           0    0    tlignedemande_id_ligne_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tlignedemande_id_ligne_seq OWNED BY public.tlignedemande.id_ligne;
          public               postgres    false    231            �            1259    21160    tlignefacture    TABLE     �  CREATE TABLE public.tlignefacture (
    id integer NOT NULL,
    id_fact integer,
    reference character varying(255) NOT NULL,
    designation character varying(255),
    pu double precision,
    element integer,
    qte integer,
    tva character varying(255),
    remise double precision,
    pht double precision,
    ptt double precision,
    typr character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public.tlignefacture;
       public         heap r       postgres    false            �            1259    21165    tlignefacture_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tlignefacture_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tlignefacture_id_seq;
       public               postgres    false    232            5           0    0    tlignefacture_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tlignefacture_id_seq OWNED BY public.tlignefacture.id;
          public               postgres    false    233            �            1259    21166 	   tpaiement    TABLE     K  CREATE TABLE public.tpaiement (
    id_p integer NOT NULL,
    demande_srv integer,
    date_payement date DEFAULT CURRENT_DATE,
    numero_cheque character varying(255),
    date_cheque timestamp with time zone,
    banque character varying(255),
    payer boolean DEFAULT false NOT NULL,
    montant double precision NOT NULL
);
    DROP TABLE public.tpaiement;
       public         heap r       postgres    false            �            1259    21173    tpaiement_id_p_seq    SEQUENCE     �   CREATE SEQUENCE public.tpaiement_id_p_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tpaiement_id_p_seq;
       public               postgres    false    234            6           0    0    tpaiement_id_p_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tpaiement_id_p_seq OWNED BY public.tpaiement.id_p;
          public               postgres    false    235            �            1259    21174 	   tservices    TABLE     8  CREATE TABLE public.tservices (
    id integer NOT NULL,
    categorieid integer NOT NULL,
    libelle character varying(255) NOT NULL,
    pu double precision NOT NULL,
    remise double precision NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.tservices;
       public         heap r       postgres    false            �            1259    21177    tservices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tservices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tservices_id_seq;
       public               postgres    false    236            7           0    0    tservices_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tservices_id_seq OWNED BY public.tservices.id;
          public               postgres    false    237            �            1259    21178    tsociete_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tsociete_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tsociete_id_seq;
       public               postgres    false    217            8           0    0    tsociete_id_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.tsociete_id_seq OWNED BY public.societe.id;
          public               postgres    false    238            �            1259    21179    tusers    TABLE     �   CREATE TABLE public.tusers (
    id integer NOT NULL,
    login character varying(255) NOT NULL,
    pwd character varying(255) NOT NULL
);
    DROP TABLE public.tusers;
       public         heap r       postgres    false            �            1259    21184    tusers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tusers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tusers_id_seq;
       public               postgres    false    239            9           0    0    tusers_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tusers_id_seq OWNED BY public.tusers.id;
          public               postgres    false    240                       2604    21185 
   societe id    DEFAULT     i   ALTER TABLE ONLY public.societe ALTER COLUMN id SET DEFAULT nextval('public.tsociete_id_seq'::regclass);
 9   ALTER TABLE public.societe ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    238    217                       2604    21186    tarticle id    DEFAULT     j   ALTER TABLE ONLY public.tarticle ALTER COLUMN id SET DEFAULT nextval('public.tarticle_id_seq'::regclass);
 :   ALTER TABLE public.tarticle ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    218                       2604    21187    tcategorieservice id    DEFAULT     |   ALTER TABLE ONLY public.tcategorieservice ALTER COLUMN id SET DEFAULT nextval('public.tcategorieservice_id_seq'::regclass);
 C   ALTER TABLE public.tcategorieservice ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    220                       2604    21188    tdemandeservice id_dem    DEFAULT     �   ALTER TABLE ONLY public.tdemandeservice ALTER COLUMN id_dem SET DEFAULT nextval('public.tdemandeservice_id_dem_seq'::regclass);
 E   ALTER TABLE public.tdemandeservice ALTER COLUMN id_dem DROP DEFAULT;
       public               postgres    false    223    222                       2604    21189    temployee id    DEFAULT     l   ALTER TABLE ONLY public.temployee ALTER COLUMN id SET DEFAULT nextval('public.temployee_id_seq'::regclass);
 ;   ALTER TABLE public.temployee ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    225    224                       2604    21190    tfacture id_fact    DEFAULT     t   ALTER TABLE ONLY public.tfacture ALTER COLUMN id_fact SET DEFAULT nextval('public.tfacture_id_fact_seq'::regclass);
 ?   ALTER TABLE public.tfacture ALTER COLUMN id_fact DROP DEFAULT;
       public               postgres    false    227    226                       2604    21191    tfamille id    DEFAULT     j   ALTER TABLE ONLY public.tfamille ALTER COLUMN id SET DEFAULT nextval('public.tfamille_id_seq'::regclass);
 :   ALTER TABLE public.tfamille ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    229    228                       2604    21192    tlignedemande id_ligne    DEFAULT     �   ALTER TABLE ONLY public.tlignedemande ALTER COLUMN id_ligne SET DEFAULT nextval('public.tlignedemande_id_ligne_seq'::regclass);
 E   ALTER TABLE public.tlignedemande ALTER COLUMN id_ligne DROP DEFAULT;
       public               postgres    false    231    230                        2604    21193    tlignefacture id    DEFAULT     t   ALTER TABLE ONLY public.tlignefacture ALTER COLUMN id SET DEFAULT nextval('public.tlignefacture_id_seq'::regclass);
 ?   ALTER TABLE public.tlignefacture ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    233    232            !           2604    21194    tpaiement id_p    DEFAULT     p   ALTER TABLE ONLY public.tpaiement ALTER COLUMN id_p SET DEFAULT nextval('public.tpaiement_id_p_seq'::regclass);
 =   ALTER TABLE public.tpaiement ALTER COLUMN id_p DROP DEFAULT;
       public               postgres    false    235    234            $           2604    21195    tservices id    DEFAULT     l   ALTER TABLE ONLY public.tservices ALTER COLUMN id SET DEFAULT nextval('public.tservices_id_seq'::regclass);
 ;   ALTER TABLE public.tservices ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    237    236            %           2604    21196 	   tusers id    DEFAULT     f   ALTER TABLE ONLY public.tusers ALTER COLUMN id SET DEFAULT nextval('public.tusers_id_seq'::regclass);
 8   ALTER TABLE public.tusers ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    240    239            '          0    58603    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public               postgres    false    241   ��                0    21116    societe 
   TABLE DATA           A   COPY public.societe (id, nom, tel, adresse, codetva) FROM stdin;
    public               postgres    false    217   ��                0    21121    tarticle 
   TABLE DATA           �   COPY public.tarticle (id, identification, designation, qte, qte_min, qte_max, prix_achat, prix_vente, tva, etat, inventaire, annee, "familleId", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    218   \�                0    21129    tcategorieservice 
   TABLE DATA           8   COPY public.tcategorieservice (id, libelle) FROM stdin;
    public               postgres    false    220   &�                0    21133    tdemandeservice 
   TABLE DATA           �   COPY public.tdemandeservice (id_dem, date_demande, matricule, conducteur, employer, heure_deb, heure_fin, client, bon_commande, prix_ttc, payer, marque) FROM stdin;
    public               postgres    false    222   ^�                0    21139 	   temployee 
   TABLE DATA           {   COPY public.temployee (id, cin, nom, recrutement, mobile, salaire, specialite, etat, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    224   ��                0    21144    tfacture 
   TABLE DATA           �   COPY public.tfacture (id_fact, date_facture, client, id_dem, num_fact, pht, tax, remise_total, timbre_fiscal, prix_ttc) FROM stdin;
    public               postgres    false    226   ��                0    21150    tfamille 
   TABLE DATA           I   COPY public.tfamille (id, famille, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    228   k�                0    21154    tlignedemande 
   TABLE DATA           �   COPY public.tlignedemande (id_ligne, demande_srv, type, categorie, element, reference, designation, prix, tva, remise, quantite, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    230   �                0    21160    tlignefacture 
   TABLE DATA           �   COPY public.tlignefacture (id, id_fact, reference, designation, pu, element, qte, tva, remise, pht, ptt, typr, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    232   �                 0    21166 	   tpaiement 
   TABLE DATA           y   COPY public.tpaiement (id_p, demande_srv, date_payement, numero_cheque, date_cheque, banque, payer, montant) FROM stdin;
    public               postgres    false    234   _	      "          0    21174 	   tservices 
   TABLE DATA           c   COPY public.tservices (id, categorieid, libelle, pu, remise, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    236   
      %          0    21179    tusers 
   TABLE DATA           0   COPY public.tusers (id, login, pwd) FROM stdin;
    public               postgres    false    239   8      :           0    0    tarticle_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tarticle_id_seq', 155, true);
          public               postgres    false    219            ;           0    0    tcategorieservice_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tcategorieservice_id_seq', 4, true);
          public               postgres    false    221            <           0    0    tdemandeservice_id_dem_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tdemandeservice_id_dem_seq', 7, true);
          public               postgres    false    223            =           0    0    temployee_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.temployee_id_seq', 73, true);
          public               postgres    false    225            >           0    0    tfacture_id_fact_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tfacture_id_fact_seq', 6, true);
          public               postgres    false    227            ?           0    0    tfamille_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tfamille_id_seq', 22, true);
          public               postgres    false    229            @           0    0    tlignedemande_id_ligne_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tlignedemande_id_ligne_seq', 46, true);
          public               postgres    false    231            A           0    0    tlignefacture_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tlignefacture_id_seq', 33, true);
          public               postgres    false    233            B           0    0    tpaiement_id_p_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tpaiement_id_p_seq', 13, true);
          public               postgres    false    235            C           0    0    tservices_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tservices_id_seq', 84, true);
          public               postgres    false    237            D           0    0    tsociete_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tsociete_id_seq', 1, true);
          public               postgres    false    238            E           0    0    tusers_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.tusers_id_seq', 3, true);
          public               postgres    false    240            w           2606    58607     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public                 postgres    false    241            )           2606    76062 $   tarticle tarticle_identification_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key UNIQUE (identification);
 N   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key;
       public                 postgres    false    218            +           2606    76064 %   tarticle tarticle_identification_key1 
   CONSTRAINT     j   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key1 UNIQUE (identification);
 O   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key1;
       public                 postgres    false    218            -           2606    76066 &   tarticle tarticle_identification_key10 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key10 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key10;
       public                 postgres    false    218            /           2606    76068 '   tarticle tarticle_identification_key100 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key100 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key100;
       public                 postgres    false    218            1           2606    76070 '   tarticle tarticle_identification_key101 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key101 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key101;
       public                 postgres    false    218            3           2606    76072 '   tarticle tarticle_identification_key102 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key102 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key102;
       public                 postgres    false    218            5           2606    76074 '   tarticle tarticle_identification_key103 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key103 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key103;
       public                 postgres    false    218            7           2606    76076 '   tarticle tarticle_identification_key104 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key104 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key104;
       public                 postgres    false    218            9           2606    76078 '   tarticle tarticle_identification_key105 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key105 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key105;
       public                 postgres    false    218            ;           2606    76080 '   tarticle tarticle_identification_key106 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key106 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key106;
       public                 postgres    false    218            =           2606    76082 '   tarticle tarticle_identification_key107 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key107 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key107;
       public                 postgres    false    218            ?           2606    76084 '   tarticle tarticle_identification_key108 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key108 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key108;
       public                 postgres    false    218            A           2606    76086 '   tarticle tarticle_identification_key109 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key109 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key109;
       public                 postgres    false    218            C           2606    76088 &   tarticle tarticle_identification_key11 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key11 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key11;
       public                 postgres    false    218            E           2606    76090 '   tarticle tarticle_identification_key110 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key110 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key110;
       public                 postgres    false    218            G           2606    76092 '   tarticle tarticle_identification_key111 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key111 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key111;
       public                 postgres    false    218            I           2606    76094 '   tarticle tarticle_identification_key112 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key112 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key112;
       public                 postgres    false    218            K           2606    76096 '   tarticle tarticle_identification_key113 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key113 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key113;
       public                 postgres    false    218            M           2606    76098 '   tarticle tarticle_identification_key114 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key114 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key114;
       public                 postgres    false    218            O           2606    76100 '   tarticle tarticle_identification_key115 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key115 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key115;
       public                 postgres    false    218            Q           2606    76102 '   tarticle tarticle_identification_key116 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key116 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key116;
       public                 postgres    false    218            S           2606    76104 '   tarticle tarticle_identification_key117 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key117 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key117;
       public                 postgres    false    218            U           2606    76106 '   tarticle tarticle_identification_key118 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key118 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key118;
       public                 postgres    false    218            W           2606    76108 '   tarticle tarticle_identification_key119 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key119 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key119;
       public                 postgres    false    218            Y           2606    76110 &   tarticle tarticle_identification_key12 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key12 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key12;
       public                 postgres    false    218            [           2606    76112 '   tarticle tarticle_identification_key120 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key120 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key120;
       public                 postgres    false    218            ]           2606    76114 '   tarticle tarticle_identification_key121 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key121 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key121;
       public                 postgres    false    218            _           2606    76116 '   tarticle tarticle_identification_key122 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key122 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key122;
       public                 postgres    false    218            a           2606    76118 '   tarticle tarticle_identification_key123 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key123 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key123;
       public                 postgres    false    218            c           2606    76120 '   tarticle tarticle_identification_key124 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key124 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key124;
       public                 postgres    false    218            e           2606    76122 '   tarticle tarticle_identification_key125 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key125 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key125;
       public                 postgres    false    218            g           2606    76124 '   tarticle tarticle_identification_key126 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key126 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key126;
       public                 postgres    false    218            i           2606    76126 '   tarticle tarticle_identification_key127 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key127 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key127;
       public                 postgres    false    218            k           2606    76128 '   tarticle tarticle_identification_key128 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key128 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key128;
       public                 postgres    false    218            m           2606    76130 '   tarticle tarticle_identification_key129 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key129 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key129;
       public                 postgres    false    218            o           2606    76132 &   tarticle tarticle_identification_key13 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key13 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key13;
       public                 postgres    false    218            q           2606    76134 '   tarticle tarticle_identification_key130 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key130 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key130;
       public                 postgres    false    218            s           2606    76136 '   tarticle tarticle_identification_key131 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key131 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key131;
       public                 postgres    false    218            u           2606    76138 '   tarticle tarticle_identification_key132 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key132 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key132;
       public                 postgres    false    218            w           2606    76140 '   tarticle tarticle_identification_key133 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key133 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key133;
       public                 postgres    false    218            y           2606    76142 '   tarticle tarticle_identification_key134 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key134 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key134;
       public                 postgres    false    218            {           2606    76144 '   tarticle tarticle_identification_key135 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key135 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key135;
       public                 postgres    false    218            }           2606    76146 '   tarticle tarticle_identification_key136 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key136 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key136;
       public                 postgres    false    218                       2606    76148 '   tarticle tarticle_identification_key137 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key137 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key137;
       public                 postgres    false    218            �           2606    76150 '   tarticle tarticle_identification_key138 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key138 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key138;
       public                 postgres    false    218            �           2606    76152 '   tarticle tarticle_identification_key139 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key139 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key139;
       public                 postgres    false    218            �           2606    76154 &   tarticle tarticle_identification_key14 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key14 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key14;
       public                 postgres    false    218            �           2606    76156 '   tarticle tarticle_identification_key140 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key140 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key140;
       public                 postgres    false    218            �           2606    76158 '   tarticle tarticle_identification_key141 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key141 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key141;
       public                 postgres    false    218            �           2606    76160 '   tarticle tarticle_identification_key142 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key142 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key142;
       public                 postgres    false    218            �           2606    76162 '   tarticle tarticle_identification_key143 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key143 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key143;
       public                 postgres    false    218            �           2606    76164 '   tarticle tarticle_identification_key144 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key144 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key144;
       public                 postgres    false    218            �           2606    76166 '   tarticle tarticle_identification_key145 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key145 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key145;
       public                 postgres    false    218            �           2606    76168 '   tarticle tarticle_identification_key146 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key146 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key146;
       public                 postgres    false    218            �           2606    76170 '   tarticle tarticle_identification_key147 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key147 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key147;
       public                 postgres    false    218            �           2606    76172 '   tarticle tarticle_identification_key148 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key148 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key148;
       public                 postgres    false    218            �           2606    76174 '   tarticle tarticle_identification_key149 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key149 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key149;
       public                 postgres    false    218            �           2606    76176 &   tarticle tarticle_identification_key15 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key15 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key15;
       public                 postgres    false    218            �           2606    76178 '   tarticle tarticle_identification_key150 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key150 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key150;
       public                 postgres    false    218            �           2606    76180 '   tarticle tarticle_identification_key151 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key151 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key151;
       public                 postgres    false    218            �           2606    76182 '   tarticle tarticle_identification_key152 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key152 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key152;
       public                 postgres    false    218            �           2606    76184 '   tarticle tarticle_identification_key153 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key153 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key153;
       public                 postgres    false    218            �           2606    76186 '   tarticle tarticle_identification_key154 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key154 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key154;
       public                 postgres    false    218            �           2606    76188 '   tarticle tarticle_identification_key155 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key155 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key155;
       public                 postgres    false    218            �           2606    76190 '   tarticle tarticle_identification_key156 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key156 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key156;
       public                 postgres    false    218            �           2606    76192 '   tarticle tarticle_identification_key157 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key157 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key157;
       public                 postgres    false    218            �           2606    76194 '   tarticle tarticle_identification_key158 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key158 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key158;
       public                 postgres    false    218            �           2606    76196 '   tarticle tarticle_identification_key159 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key159 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key159;
       public                 postgres    false    218            �           2606    76198 &   tarticle tarticle_identification_key16 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key16 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key16;
       public                 postgres    false    218            �           2606    76200 '   tarticle tarticle_identification_key160 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key160 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key160;
       public                 postgres    false    218            �           2606    76202 '   tarticle tarticle_identification_key161 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key161 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key161;
       public                 postgres    false    218            �           2606    76204 '   tarticle tarticle_identification_key162 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key162 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key162;
       public                 postgres    false    218            �           2606    76206 '   tarticle tarticle_identification_key163 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key163 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key163;
       public                 postgres    false    218            �           2606    76208 '   tarticle tarticle_identification_key164 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key164 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key164;
       public                 postgres    false    218            �           2606    76210 '   tarticle tarticle_identification_key165 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key165 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key165;
       public                 postgres    false    218            �           2606    76212 '   tarticle tarticle_identification_key166 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key166 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key166;
       public                 postgres    false    218            �           2606    76214 '   tarticle tarticle_identification_key167 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key167 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key167;
       public                 postgres    false    218            �           2606    76216 '   tarticle tarticle_identification_key168 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key168 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key168;
       public                 postgres    false    218            �           2606    76218 '   tarticle tarticle_identification_key169 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key169 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key169;
       public                 postgres    false    218            �           2606    76220 &   tarticle tarticle_identification_key17 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key17 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key17;
       public                 postgres    false    218            �           2606    76222 '   tarticle tarticle_identification_key170 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key170 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key170;
       public                 postgres    false    218            �           2606    76224 '   tarticle tarticle_identification_key171 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key171 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key171;
       public                 postgres    false    218            �           2606    76226 '   tarticle tarticle_identification_key172 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key172 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key172;
       public                 postgres    false    218            �           2606    76228 '   tarticle tarticle_identification_key173 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key173 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key173;
       public                 postgres    false    218            �           2606    76230 '   tarticle tarticle_identification_key174 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key174 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key174;
       public                 postgres    false    218            �           2606    76232 '   tarticle tarticle_identification_key175 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key175 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key175;
       public                 postgres    false    218            �           2606    76398 '   tarticle tarticle_identification_key176 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key176 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key176;
       public                 postgres    false    218            �           2606    76400 '   tarticle tarticle_identification_key177 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key177 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key177;
       public                 postgres    false    218            �           2606    76060 '   tarticle tarticle_identification_key178 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key178 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key178;
       public                 postgres    false    218            �           2606    76402 '   tarticle tarticle_identification_key179 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key179 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key179;
       public                 postgres    false    218            �           2606    76234 &   tarticle tarticle_identification_key18 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key18 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key18;
       public                 postgres    false    218            �           2606    76058 '   tarticle tarticle_identification_key180 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key180 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key180;
       public                 postgres    false    218            �           2606    76404 '   tarticle tarticle_identification_key181 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key181 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key181;
       public                 postgres    false    218            �           2606    76056 '   tarticle tarticle_identification_key182 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key182 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key182;
       public                 postgres    false    218            �           2606    76406 '   tarticle tarticle_identification_key183 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key183 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key183;
       public                 postgres    false    218            �           2606    76054 '   tarticle tarticle_identification_key184 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key184 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key184;
       public                 postgres    false    218            �           2606    76408 '   tarticle tarticle_identification_key185 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key185 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key185;
       public                 postgres    false    218            �           2606    76052 '   tarticle tarticle_identification_key186 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key186 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key186;
       public                 postgres    false    218            �           2606    76410 '   tarticle tarticle_identification_key187 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key187 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key187;
       public                 postgres    false    218            �           2606    76034 '   tarticle tarticle_identification_key188 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key188 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key188;
       public                 postgres    false    218            �           2606    76412 '   tarticle tarticle_identification_key189 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key189 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key189;
       public                 postgres    false    218            �           2606    76236 &   tarticle tarticle_identification_key19 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key19 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key19;
       public                 postgres    false    218            �           2606    76032 '   tarticle tarticle_identification_key190 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key190 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key190;
       public                 postgres    false    218            �           2606    76414 '   tarticle tarticle_identification_key191 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key191 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key191;
       public                 postgres    false    218            �           2606    76416 '   tarticle tarticle_identification_key192 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key192 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key192;
       public                 postgres    false    218            �           2606    76418 '   tarticle tarticle_identification_key193 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key193 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key193;
       public                 postgres    false    218            �           2606    76030 '   tarticle tarticle_identification_key194 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key194 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key194;
       public                 postgres    false    218            �           2606    76420 '   tarticle tarticle_identification_key195 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key195 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key195;
       public                 postgres    false    218                       2606    76028 '   tarticle tarticle_identification_key196 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key196 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key196;
       public                 postgres    false    218                       2606    76422 '   tarticle tarticle_identification_key197 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key197 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key197;
       public                 postgres    false    218                       2606    76424 '   tarticle tarticle_identification_key198 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key198 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key198;
       public                 postgres    false    218                       2606    76426 '   tarticle tarticle_identification_key199 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key199 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key199;
       public                 postgres    false    218            	           2606    76238 %   tarticle tarticle_identification_key2 
   CONSTRAINT     j   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key2 UNIQUE (identification);
 O   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key2;
       public                 postgres    false    218                       2606    76240 &   tarticle tarticle_identification_key20 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key20 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key20;
       public                 postgres    false    218                       2606    76026 '   tarticle tarticle_identification_key200 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key200 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key200;
       public                 postgres    false    218                       2606    76428 '   tarticle tarticle_identification_key201 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key201 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key201;
       public                 postgres    false    218                       2606    76024 '   tarticle tarticle_identification_key202 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key202 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key202;
       public                 postgres    false    218                       2606    76430 '   tarticle tarticle_identification_key203 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key203 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key203;
       public                 postgres    false    218                       2606    76432 '   tarticle tarticle_identification_key204 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key204 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key204;
       public                 postgres    false    218                       2606    76434 '   tarticle tarticle_identification_key205 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key205 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key205;
       public                 postgres    false    218                       2606    76022 '   tarticle tarticle_identification_key206 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key206 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key206;
       public                 postgres    false    218                       2606    76436 '   tarticle tarticle_identification_key207 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key207 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key207;
       public                 postgres    false    218                       2606    76438 '   tarticle tarticle_identification_key208 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key208 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key208;
       public                 postgres    false    218                       2606    76440 '   tarticle tarticle_identification_key209 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key209 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key209;
       public                 postgres    false    218            !           2606    76242 &   tarticle tarticle_identification_key21 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key21 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key21;
       public                 postgres    false    218            #           2606    76020 '   tarticle tarticle_identification_key210 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key210 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key210;
       public                 postgres    false    218            %           2606    76442 '   tarticle tarticle_identification_key211 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key211 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key211;
       public                 postgres    false    218            '           2606    76018 '   tarticle tarticle_identification_key212 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key212 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key212;
       public                 postgres    false    218            )           2606    76444 '   tarticle tarticle_identification_key213 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key213 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key213;
       public                 postgres    false    218            +           2606    76016 '   tarticle tarticle_identification_key214 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key214 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key214;
       public                 postgres    false    218            -           2606    76446 '   tarticle tarticle_identification_key215 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key215 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key215;
       public                 postgres    false    218            /           2606    76014 '   tarticle tarticle_identification_key216 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key216 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key216;
       public                 postgres    false    218            1           2606    76448 '   tarticle tarticle_identification_key217 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key217 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key217;
       public                 postgres    false    218            3           2606    76012 '   tarticle tarticle_identification_key218 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key218 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key218;
       public                 postgres    false    218            5           2606    76450 '   tarticle tarticle_identification_key219 
   CONSTRAINT     l   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key219 UNIQUE (identification);
 Q   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key219;
       public                 postgres    false    218            7           2606    76244 &   tarticle tarticle_identification_key22 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key22 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key22;
       public                 postgres    false    218            9           2606    76246 &   tarticle tarticle_identification_key23 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key23 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key23;
       public                 postgres    false    218            ;           2606    76248 &   tarticle tarticle_identification_key24 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key24 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key24;
       public                 postgres    false    218            =           2606    76250 &   tarticle tarticle_identification_key25 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key25 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key25;
       public                 postgres    false    218            ?           2606    76252 &   tarticle tarticle_identification_key26 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key26 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key26;
       public                 postgres    false    218            A           2606    76254 &   tarticle tarticle_identification_key27 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key27 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key27;
       public                 postgres    false    218            C           2606    76256 &   tarticle tarticle_identification_key28 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key28 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key28;
       public                 postgres    false    218            E           2606    76258 &   tarticle tarticle_identification_key29 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key29 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key29;
       public                 postgres    false    218            G           2606    76260 %   tarticle tarticle_identification_key3 
   CONSTRAINT     j   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key3 UNIQUE (identification);
 O   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key3;
       public                 postgres    false    218            I           2606    76262 &   tarticle tarticle_identification_key30 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key30 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key30;
       public                 postgres    false    218            K           2606    76264 &   tarticle tarticle_identification_key31 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key31 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key31;
       public                 postgres    false    218            M           2606    76266 &   tarticle tarticle_identification_key32 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key32 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key32;
       public                 postgres    false    218            O           2606    76268 &   tarticle tarticle_identification_key33 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key33 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key33;
       public                 postgres    false    218            Q           2606    76270 &   tarticle tarticle_identification_key34 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key34 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key34;
       public                 postgres    false    218            S           2606    76272 &   tarticle tarticle_identification_key35 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key35 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key35;
       public                 postgres    false    218            U           2606    76274 &   tarticle tarticle_identification_key36 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key36 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key36;
       public                 postgres    false    218            W           2606    76276 &   tarticle tarticle_identification_key37 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key37 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key37;
       public                 postgres    false    218            Y           2606    76278 &   tarticle tarticle_identification_key38 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key38 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key38;
       public                 postgres    false    218            [           2606    76280 &   tarticle tarticle_identification_key39 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key39 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key39;
       public                 postgres    false    218            ]           2606    76282 %   tarticle tarticle_identification_key4 
   CONSTRAINT     j   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key4 UNIQUE (identification);
 O   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key4;
       public                 postgres    false    218            _           2606    76284 &   tarticle tarticle_identification_key40 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key40 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key40;
       public                 postgres    false    218            a           2606    76286 &   tarticle tarticle_identification_key41 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key41 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key41;
       public                 postgres    false    218            c           2606    76288 &   tarticle tarticle_identification_key42 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key42 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key42;
       public                 postgres    false    218            e           2606    76290 &   tarticle tarticle_identification_key43 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key43 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key43;
       public                 postgres    false    218            g           2606    76292 &   tarticle tarticle_identification_key44 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key44 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key44;
       public                 postgres    false    218            i           2606    76294 &   tarticle tarticle_identification_key45 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key45 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key45;
       public                 postgres    false    218            k           2606    76296 &   tarticle tarticle_identification_key46 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key46 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key46;
       public                 postgres    false    218            m           2606    76298 &   tarticle tarticle_identification_key47 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key47 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key47;
       public                 postgres    false    218            o           2606    76300 &   tarticle tarticle_identification_key48 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key48 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key48;
       public                 postgres    false    218            q           2606    76302 &   tarticle tarticle_identification_key49 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key49 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key49;
       public                 postgres    false    218            s           2606    76304 %   tarticle tarticle_identification_key5 
   CONSTRAINT     j   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key5 UNIQUE (identification);
 O   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key5;
       public                 postgres    false    218            u           2606    76306 &   tarticle tarticle_identification_key50 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key50 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key50;
       public                 postgres    false    218            w           2606    76308 &   tarticle tarticle_identification_key51 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key51 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key51;
       public                 postgres    false    218            y           2606    76310 &   tarticle tarticle_identification_key52 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key52 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key52;
       public                 postgres    false    218            {           2606    76312 &   tarticle tarticle_identification_key53 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key53 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key53;
       public                 postgres    false    218            }           2606    76314 &   tarticle tarticle_identification_key54 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key54 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key54;
       public                 postgres    false    218                       2606    76316 &   tarticle tarticle_identification_key55 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key55 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key55;
       public                 postgres    false    218            �           2606    76318 &   tarticle tarticle_identification_key56 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key56 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key56;
       public                 postgres    false    218            �           2606    76320 &   tarticle tarticle_identification_key57 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key57 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key57;
       public                 postgres    false    218            �           2606    76322 &   tarticle tarticle_identification_key58 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key58 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key58;
       public                 postgres    false    218            �           2606    76324 &   tarticle tarticle_identification_key59 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key59 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key59;
       public                 postgres    false    218            �           2606    76326 %   tarticle tarticle_identification_key6 
   CONSTRAINT     j   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key6 UNIQUE (identification);
 O   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key6;
       public                 postgres    false    218            �           2606    76328 &   tarticle tarticle_identification_key60 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key60 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key60;
       public                 postgres    false    218            �           2606    76330 &   tarticle tarticle_identification_key61 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key61 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key61;
       public                 postgres    false    218            �           2606    76332 &   tarticle tarticle_identification_key62 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key62 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key62;
       public                 postgres    false    218            �           2606    76334 &   tarticle tarticle_identification_key63 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key63 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key63;
       public                 postgres    false    218            �           2606    76336 &   tarticle tarticle_identification_key64 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key64 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key64;
       public                 postgres    false    218            �           2606    76338 &   tarticle tarticle_identification_key65 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key65 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key65;
       public                 postgres    false    218            �           2606    76340 &   tarticle tarticle_identification_key66 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key66 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key66;
       public                 postgres    false    218            �           2606    76342 &   tarticle tarticle_identification_key67 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key67 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key67;
       public                 postgres    false    218            �           2606    76344 &   tarticle tarticle_identification_key68 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key68 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key68;
       public                 postgres    false    218            �           2606    76346 &   tarticle tarticle_identification_key69 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key69 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key69;
       public                 postgres    false    218            �           2606    76348 %   tarticle tarticle_identification_key7 
   CONSTRAINT     j   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key7 UNIQUE (identification);
 O   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key7;
       public                 postgres    false    218            �           2606    76350 &   tarticle tarticle_identification_key70 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key70 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key70;
       public                 postgres    false    218            �           2606    76352 &   tarticle tarticle_identification_key71 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key71 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key71;
       public                 postgres    false    218            �           2606    76354 &   tarticle tarticle_identification_key72 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key72 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key72;
       public                 postgres    false    218            �           2606    76356 &   tarticle tarticle_identification_key73 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key73 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key73;
       public                 postgres    false    218            �           2606    76358 &   tarticle tarticle_identification_key74 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key74 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key74;
       public                 postgres    false    218            �           2606    76360 &   tarticle tarticle_identification_key75 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key75 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key75;
       public                 postgres    false    218            �           2606    76362 &   tarticle tarticle_identification_key76 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key76 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key76;
       public                 postgres    false    218            �           2606    76364 &   tarticle tarticle_identification_key77 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key77 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key77;
       public                 postgres    false    218            �           2606    76366 &   tarticle tarticle_identification_key78 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key78 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key78;
       public                 postgres    false    218            �           2606    76368 &   tarticle tarticle_identification_key79 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key79 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key79;
       public                 postgres    false    218            �           2606    76370 %   tarticle tarticle_identification_key8 
   CONSTRAINT     j   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key8 UNIQUE (identification);
 O   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key8;
       public                 postgres    false    218            �           2606    76372 &   tarticle tarticle_identification_key80 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key80 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key80;
       public                 postgres    false    218            �           2606    76374 &   tarticle tarticle_identification_key81 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key81 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key81;
       public                 postgres    false    218            �           2606    76376 &   tarticle tarticle_identification_key82 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key82 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key82;
       public                 postgres    false    218            �           2606    76378 &   tarticle tarticle_identification_key83 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key83 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key83;
       public                 postgres    false    218            �           2606    76380 &   tarticle tarticle_identification_key84 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key84 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key84;
       public                 postgres    false    218            �           2606    76382 &   tarticle tarticle_identification_key85 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key85 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key85;
       public                 postgres    false    218            �           2606    76384 &   tarticle tarticle_identification_key86 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key86 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key86;
       public                 postgres    false    218            �           2606    76386 &   tarticle tarticle_identification_key87 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key87 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key87;
       public                 postgres    false    218            �           2606    76036 &   tarticle tarticle_identification_key88 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key88 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key88;
       public                 postgres    false    218            �           2606    76038 &   tarticle tarticle_identification_key89 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key89 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key89;
       public                 postgres    false    218            �           2606    76040 %   tarticle tarticle_identification_key9 
   CONSTRAINT     j   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key9 UNIQUE (identification);
 O   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key9;
       public                 postgres    false    218            �           2606    76042 &   tarticle tarticle_identification_key90 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key90 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key90;
       public                 postgres    false    218            �           2606    76044 &   tarticle tarticle_identification_key91 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key91 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key91;
       public                 postgres    false    218            �           2606    76046 &   tarticle tarticle_identification_key92 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key92 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key92;
       public                 postgres    false    218            �           2606    76048 &   tarticle tarticle_identification_key93 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key93 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key93;
       public                 postgres    false    218            �           2606    76050 &   tarticle tarticle_identification_key94 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key94 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key94;
       public                 postgres    false    218            �           2606    76388 &   tarticle tarticle_identification_key95 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key95 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key95;
       public                 postgres    false    218            �           2606    76390 &   tarticle tarticle_identification_key96 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key96 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key96;
       public                 postgres    false    218            �           2606    76392 &   tarticle tarticle_identification_key97 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key97 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key97;
       public                 postgres    false    218            �           2606    76394 &   tarticle tarticle_identification_key98 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key98 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key98;
       public                 postgres    false    218            �           2606    76396 &   tarticle tarticle_identification_key99 
   CONSTRAINT     k   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_identification_key99 UNIQUE (identification);
 P   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_identification_key99;
       public                 postgres    false    218            �           2606    21550    tarticle tarticle_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT tarticle_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT tarticle_pkey;
       public                 postgres    false    218            �           2606    21552 (   tcategorieservice tcategorieservice_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tcategorieservice
    ADD CONSTRAINT tcategorieservice_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.tcategorieservice DROP CONSTRAINT tcategorieservice_pkey;
       public                 postgres    false    220            �           2606    21554 $   tdemandeservice tdemandeservice_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tdemandeservice
    ADD CONSTRAINT tdemandeservice_pkey PRIMARY KEY (id_dem);
 N   ALTER TABLE ONLY public.tdemandeservice DROP CONSTRAINT tdemandeservice_pkey;
       public                 postgres    false    222            �           2606    76757    temployee temployee_cin_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key UNIQUE (cin);
 E   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key;
       public                 postgres    false    224            �           2606    76759    temployee temployee_cin_key1 
   CONSTRAINT     V   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key1 UNIQUE (cin);
 F   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key1;
       public                 postgres    false    224            �           2606    76761    temployee temployee_cin_key10 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key10 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key10;
       public                 postgres    false    224            �           2606    76763    temployee temployee_cin_key100 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key100 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key100;
       public                 postgres    false    224            �           2606    76765    temployee temployee_cin_key101 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key101 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key101;
       public                 postgres    false    224            �           2606    76767    temployee temployee_cin_key102 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key102 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key102;
       public                 postgres    false    224            �           2606    76769    temployee temployee_cin_key103 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key103 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key103;
       public                 postgres    false    224            �           2606    76771    temployee temployee_cin_key104 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key104 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key104;
       public                 postgres    false    224            �           2606    76773    temployee temployee_cin_key105 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key105 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key105;
       public                 postgres    false    224            �           2606    76775    temployee temployee_cin_key106 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key106 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key106;
       public                 postgres    false    224            �           2606    76777    temployee temployee_cin_key107 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key107 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key107;
       public                 postgres    false    224            �           2606    76779    temployee temployee_cin_key108 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key108 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key108;
       public                 postgres    false    224            �           2606    76781    temployee temployee_cin_key109 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key109 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key109;
       public                 postgres    false    224                       2606    76783    temployee temployee_cin_key11 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key11 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key11;
       public                 postgres    false    224                       2606    76785    temployee temployee_cin_key110 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key110 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key110;
       public                 postgres    false    224                       2606    76787    temployee temployee_cin_key111 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key111 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key111;
       public                 postgres    false    224                       2606    76789    temployee temployee_cin_key112 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key112 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key112;
       public                 postgres    false    224            	           2606    76791    temployee temployee_cin_key113 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key113 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key113;
       public                 postgres    false    224                       2606    76793    temployee temployee_cin_key114 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key114 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key114;
       public                 postgres    false    224                       2606    76795    temployee temployee_cin_key115 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key115 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key115;
       public                 postgres    false    224                       2606    76797    temployee temployee_cin_key116 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key116 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key116;
       public                 postgres    false    224                       2606    76799    temployee temployee_cin_key117 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key117 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key117;
       public                 postgres    false    224                       2606    76801    temployee temployee_cin_key118 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key118 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key118;
       public                 postgres    false    224                       2606    76803    temployee temployee_cin_key119 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key119 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key119;
       public                 postgres    false    224                       2606    76805    temployee temployee_cin_key12 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key12 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key12;
       public                 postgres    false    224                       2606    76807    temployee temployee_cin_key120 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key120 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key120;
       public                 postgres    false    224                       2606    76809    temployee temployee_cin_key121 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key121 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key121;
       public                 postgres    false    224                       2606    76811    temployee temployee_cin_key122 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key122 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key122;
       public                 postgres    false    224                       2606    76813    temployee temployee_cin_key123 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key123 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key123;
       public                 postgres    false    224            !           2606    76815    temployee temployee_cin_key124 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key124 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key124;
       public                 postgres    false    224            #           2606    76817    temployee temployee_cin_key125 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key125 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key125;
       public                 postgres    false    224            %           2606    76819    temployee temployee_cin_key126 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key126 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key126;
       public                 postgres    false    224            '           2606    76821    temployee temployee_cin_key127 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key127 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key127;
       public                 postgres    false    224            )           2606    76823    temployee temployee_cin_key128 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key128 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key128;
       public                 postgres    false    224            +           2606    76825    temployee temployee_cin_key129 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key129 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key129;
       public                 postgres    false    224            -           2606    76827    temployee temployee_cin_key13 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key13 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key13;
       public                 postgres    false    224            /           2606    76829    temployee temployee_cin_key130 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key130 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key130;
       public                 postgres    false    224            1           2606    76831    temployee temployee_cin_key131 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key131 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key131;
       public                 postgres    false    224            3           2606    76833    temployee temployee_cin_key132 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key132 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key132;
       public                 postgres    false    224            5           2606    76835    temployee temployee_cin_key133 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key133 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key133;
       public                 postgres    false    224            7           2606    76837    temployee temployee_cin_key134 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key134 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key134;
       public                 postgres    false    224            9           2606    76839    temployee temployee_cin_key135 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key135 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key135;
       public                 postgres    false    224            ;           2606    76841    temployee temployee_cin_key136 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key136 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key136;
       public                 postgres    false    224            =           2606    76471    temployee temployee_cin_key137 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key137 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key137;
       public                 postgres    false    224            ?           2606    76473    temployee temployee_cin_key138 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key138 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key138;
       public                 postgres    false    224            A           2606    76475    temployee temployee_cin_key139 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key139 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key139;
       public                 postgres    false    224            C           2606    76477    temployee temployee_cin_key14 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key14 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key14;
       public                 postgres    false    224            E           2606    76479    temployee temployee_cin_key140 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key140 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key140;
       public                 postgres    false    224            G           2606    76571    temployee temployee_cin_key141 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key141 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key141;
       public                 postgres    false    224            I           2606    76573    temployee temployee_cin_key142 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key142 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key142;
       public                 postgres    false    224            K           2606    76575    temployee temployee_cin_key143 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key143 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key143;
       public                 postgres    false    224            M           2606    76577    temployee temployee_cin_key144 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key144 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key144;
       public                 postgres    false    224            O           2606    76579    temployee temployee_cin_key145 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key145 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key145;
       public                 postgres    false    224            Q           2606    76581    temployee temployee_cin_key146 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key146 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key146;
       public                 postgres    false    224            S           2606    76583    temployee temployee_cin_key147 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key147 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key147;
       public                 postgres    false    224            U           2606    76585    temployee temployee_cin_key148 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key148 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key148;
       public                 postgres    false    224            W           2606    76587    temployee temployee_cin_key149 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key149 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key149;
       public                 postgres    false    224            Y           2606    76589    temployee temployee_cin_key15 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key15 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key15;
       public                 postgres    false    224            [           2606    76591    temployee temployee_cin_key150 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key150 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key150;
       public                 postgres    false    224            ]           2606    76685    temployee temployee_cin_key151 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key151 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key151;
       public                 postgres    false    224            _           2606    76687    temployee temployee_cin_key152 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key152 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key152;
       public                 postgres    false    224            a           2606    76755    temployee temployee_cin_key153 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key153 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key153;
       public                 postgres    false    224            c           2606    76689    temployee temployee_cin_key154 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key154 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key154;
       public                 postgres    false    224            e           2606    76753    temployee temployee_cin_key155 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key155 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key155;
       public                 postgres    false    224            g           2606    76691    temployee temployee_cin_key156 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key156 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key156;
       public                 postgres    false    224            i           2606    76751    temployee temployee_cin_key157 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key157 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key157;
       public                 postgres    false    224            k           2606    76693    temployee temployee_cin_key158 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key158 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key158;
       public                 postgres    false    224            m           2606    76749    temployee temployee_cin_key159 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key159 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key159;
       public                 postgres    false    224            o           2606    76593    temployee temployee_cin_key16 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key16 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key16;
       public                 postgres    false    224            q           2606    76695    temployee temployee_cin_key160 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key160 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key160;
       public                 postgres    false    224            s           2606    76697    temployee temployee_cin_key161 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key161 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key161;
       public                 postgres    false    224            u           2606    76699    temployee temployee_cin_key162 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key162 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key162;
       public                 postgres    false    224            w           2606    76747    temployee temployee_cin_key163 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key163 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key163;
       public                 postgres    false    224            y           2606    76701    temployee temployee_cin_key164 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key164 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key164;
       public                 postgres    false    224            {           2606    76745    temployee temployee_cin_key165 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key165 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key165;
       public                 postgres    false    224            }           2606    76703    temployee temployee_cin_key166 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key166 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key166;
       public                 postgres    false    224                       2606    76705    temployee temployee_cin_key167 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key167 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key167;
       public                 postgres    false    224            �           2606    76707    temployee temployee_cin_key168 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key168 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key168;
       public                 postgres    false    224            �           2606    76569    temployee temployee_cin_key169 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key169 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key169;
       public                 postgres    false    224            �           2606    76595    temployee temployee_cin_key17 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key17 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key17;
       public                 postgres    false    224            �           2606    76709    temployee temployee_cin_key170 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key170 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key170;
       public                 postgres    false    224            �           2606    76567    temployee temployee_cin_key171 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key171 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key171;
       public                 postgres    false    224            �           2606    76711    temployee temployee_cin_key172 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key172 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key172;
       public                 postgres    false    224            �           2606    76713    temployee temployee_cin_key173 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key173 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key173;
       public                 postgres    false    224            �           2606    76715    temployee temployee_cin_key174 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key174 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key174;
       public                 postgres    false    224            �           2606    76525    temployee temployee_cin_key175 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key175 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key175;
       public                 postgres    false    224            �           2606    76717    temployee temployee_cin_key176 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key176 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key176;
       public                 postgres    false    224            �           2606    76523    temployee temployee_cin_key177 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key177 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key177;
       public                 postgres    false    224            �           2606    76719    temployee temployee_cin_key178 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key178 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key178;
       public                 postgres    false    224            �           2606    76721    temployee temployee_cin_key179 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key179 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key179;
       public                 postgres    false    224            �           2606    76597    temployee temployee_cin_key18 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key18 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key18;
       public                 postgres    false    224            �           2606    76723    temployee temployee_cin_key180 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key180 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key180;
       public                 postgres    false    224            �           2606    76731    temployee temployee_cin_key181 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key181 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key181;
       public                 postgres    false    224            �           2606    76725    temployee temployee_cin_key182 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key182 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key182;
       public                 postgres    false    224            �           2606    76727    temployee temployee_cin_key183 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key183 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key183;
       public                 postgres    false    224            �           2606    76729    temployee temployee_cin_key184 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key184 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key184;
       public                 postgres    false    224            �           2606    76541    temployee temployee_cin_key185 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key185 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key185;
       public                 postgres    false    224            �           2606    76843    temployee temployee_cin_key186 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key186 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key186;
       public                 postgres    false    224            �           2606    76469    temployee temployee_cin_key187 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key187 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key187;
       public                 postgres    false    224            �           2606    76845    temployee temployee_cin_key188 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key188 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key188;
       public                 postgres    false    224            �           2606    76467    temployee temployee_cin_key189 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key189 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key189;
       public                 postgres    false    224            �           2606    76599    temployee temployee_cin_key19 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key19 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key19;
       public                 postgres    false    224            �           2606    76847    temployee temployee_cin_key190 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key190 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key190;
       public                 postgres    false    224            �           2606    76465    temployee temployee_cin_key191 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key191 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key191;
       public                 postgres    false    224            �           2606    76849    temployee temployee_cin_key192 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key192 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key192;
       public                 postgres    false    224            �           2606    76463    temployee temployee_cin_key193 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key193 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key193;
       public                 postgres    false    224            �           2606    76851    temployee temployee_cin_key194 
   CONSTRAINT     X   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key194 UNIQUE (cin);
 H   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key194;
       public                 postgres    false    224            �           2606    76601    temployee temployee_cin_key2 
   CONSTRAINT     V   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key2 UNIQUE (cin);
 F   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key2;
       public                 postgres    false    224            �           2606    76603    temployee temployee_cin_key20 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key20 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key20;
       public                 postgres    false    224            �           2606    76605    temployee temployee_cin_key21 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key21 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key21;
       public                 postgres    false    224            �           2606    76607    temployee temployee_cin_key22 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key22 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key22;
       public                 postgres    false    224            �           2606    76609    temployee temployee_cin_key23 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key23 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key23;
       public                 postgres    false    224            �           2606    76611    temployee temployee_cin_key24 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key24 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key24;
       public                 postgres    false    224            �           2606    76613    temployee temployee_cin_key25 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key25 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key25;
       public                 postgres    false    224            �           2606    76615    temployee temployee_cin_key26 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key26 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key26;
       public                 postgres    false    224            �           2606    76617    temployee temployee_cin_key27 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key27 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key27;
       public                 postgres    false    224            �           2606    76619    temployee temployee_cin_key28 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key28 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key28;
       public                 postgres    false    224            �           2606    76621    temployee temployee_cin_key29 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key29 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key29;
       public                 postgres    false    224            �           2606    76623    temployee temployee_cin_key3 
   CONSTRAINT     V   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key3 UNIQUE (cin);
 F   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key3;
       public                 postgres    false    224            �           2606    76625    temployee temployee_cin_key30 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key30 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key30;
       public                 postgres    false    224            �           2606    76627    temployee temployee_cin_key31 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key31 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key31;
       public                 postgres    false    224            �           2606    76629    temployee temployee_cin_key32 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key32 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key32;
       public                 postgres    false    224            �           2606    76631    temployee temployee_cin_key33 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key33 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key33;
       public                 postgres    false    224            �           2606    76633    temployee temployee_cin_key34 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key34 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key34;
       public                 postgres    false    224            �           2606    76635    temployee temployee_cin_key35 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key35 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key35;
       public                 postgres    false    224            �           2606    76527    temployee temployee_cin_key36 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key36 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key36;
       public                 postgres    false    224            �           2606    76529    temployee temployee_cin_key37 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key37 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key37;
       public                 postgres    false    224            �           2606    76531    temployee temployee_cin_key38 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key38 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key38;
       public                 postgres    false    224            �           2606    76533    temployee temployee_cin_key39 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key39 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key39;
       public                 postgres    false    224            �           2606    76535    temployee temployee_cin_key4 
   CONSTRAINT     V   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key4 UNIQUE (cin);
 F   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key4;
       public                 postgres    false    224            �           2606    76537    temployee temployee_cin_key40 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key40 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key40;
       public                 postgres    false    224            �           2606    76539    temployee temployee_cin_key41 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key41 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key41;
       public                 postgres    false    224            �           2606    76543    temployee temployee_cin_key42 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key42 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key42;
       public                 postgres    false    224            �           2606    76545    temployee temployee_cin_key43 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key43 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key43;
       public                 postgres    false    224            �           2606    76547    temployee temployee_cin_key44 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key44 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key44;
       public                 postgres    false    224            �           2606    76549    temployee temployee_cin_key45 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key45 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key45;
       public                 postgres    false    224            �           2606    76733    temployee temployee_cin_key46 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key46 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key46;
       public                 postgres    false    224            �           2606    76735    temployee temployee_cin_key47 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key47 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key47;
       public                 postgres    false    224            �           2606    76737    temployee temployee_cin_key48 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key48 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key48;
       public                 postgres    false    224            �           2606    76739    temployee temployee_cin_key49 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key49 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key49;
       public                 postgres    false    224            �           2606    76741    temployee temployee_cin_key5 
   CONSTRAINT     V   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key5 UNIQUE (cin);
 F   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key5;
       public                 postgres    false    224                       2606    76743    temployee temployee_cin_key50 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key50 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key50;
       public                 postgres    false    224                       2606    76481    temployee temployee_cin_key51 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key51 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key51;
       public                 postgres    false    224                       2606    76483    temployee temployee_cin_key52 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key52 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key52;
       public                 postgres    false    224                       2606    76485    temployee temployee_cin_key53 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key53 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key53;
       public                 postgres    false    224            	           2606    76487    temployee temployee_cin_key54 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key54 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key54;
       public                 postgres    false    224                       2606    76489    temployee temployee_cin_key55 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key55 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key55;
       public                 postgres    false    224                       2606    76491    temployee temployee_cin_key56 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key56 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key56;
       public                 postgres    false    224                       2606    76493    temployee temployee_cin_key57 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key57 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key57;
       public                 postgres    false    224                       2606    76495    temployee temployee_cin_key58 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key58 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key58;
       public                 postgres    false    224                       2606    76497    temployee temployee_cin_key59 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key59 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key59;
       public                 postgres    false    224                       2606    76499    temployee temployee_cin_key6 
   CONSTRAINT     V   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key6 UNIQUE (cin);
 F   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key6;
       public                 postgres    false    224                       2606    76501    temployee temployee_cin_key60 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key60 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key60;
       public                 postgres    false    224                       2606    76503    temployee temployee_cin_key61 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key61 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key61;
       public                 postgres    false    224                       2606    76505    temployee temployee_cin_key62 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key62 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key62;
       public                 postgres    false    224                       2606    76507    temployee temployee_cin_key63 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key63 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key63;
       public                 postgres    false    224                       2606    76509    temployee temployee_cin_key64 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key64 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key64;
       public                 postgres    false    224            !           2606    76511    temployee temployee_cin_key65 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key65 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key65;
       public                 postgres    false    224            #           2606    76513    temployee temployee_cin_key66 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key66 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key66;
       public                 postgres    false    224            %           2606    76515    temployee temployee_cin_key67 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key67 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key67;
       public                 postgres    false    224            '           2606    76517    temployee temployee_cin_key68 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key68 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key68;
       public                 postgres    false    224            )           2606    76519    temployee temployee_cin_key69 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key69 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key69;
       public                 postgres    false    224            +           2606    76521    temployee temployee_cin_key7 
   CONSTRAINT     V   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key7 UNIQUE (cin);
 F   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key7;
       public                 postgres    false    224            -           2606    76551    temployee temployee_cin_key70 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key70 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key70;
       public                 postgres    false    224            /           2606    76553    temployee temployee_cin_key71 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key71 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key71;
       public                 postgres    false    224            1           2606    76555    temployee temployee_cin_key72 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key72 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key72;
       public                 postgres    false    224            3           2606    76557    temployee temployee_cin_key73 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key73 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key73;
       public                 postgres    false    224            5           2606    76559    temployee temployee_cin_key74 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key74 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key74;
       public                 postgres    false    224            7           2606    76561    temployee temployee_cin_key75 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key75 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key75;
       public                 postgres    false    224            9           2606    76563    temployee temployee_cin_key76 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key76 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key76;
       public                 postgres    false    224            ;           2606    76565    temployee temployee_cin_key77 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key77 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key77;
       public                 postgres    false    224            =           2606    76637    temployee temployee_cin_key78 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key78 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key78;
       public                 postgres    false    224            ?           2606    76639    temployee temployee_cin_key79 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key79 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key79;
       public                 postgres    false    224            A           2606    76641    temployee temployee_cin_key8 
   CONSTRAINT     V   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key8 UNIQUE (cin);
 F   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key8;
       public                 postgres    false    224            C           2606    76643    temployee temployee_cin_key80 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key80 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key80;
       public                 postgres    false    224            E           2606    76645    temployee temployee_cin_key81 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key81 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key81;
       public                 postgres    false    224            G           2606    76647    temployee temployee_cin_key82 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key82 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key82;
       public                 postgres    false    224            I           2606    76649    temployee temployee_cin_key83 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key83 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key83;
       public                 postgres    false    224            K           2606    76651    temployee temployee_cin_key84 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key84 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key84;
       public                 postgres    false    224            M           2606    76653    temployee temployee_cin_key85 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key85 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key85;
       public                 postgres    false    224            O           2606    76655    temployee temployee_cin_key86 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key86 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key86;
       public                 postgres    false    224            Q           2606    76657    temployee temployee_cin_key87 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key87 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key87;
       public                 postgres    false    224            S           2606    76659    temployee temployee_cin_key88 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key88 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key88;
       public                 postgres    false    224            U           2606    76661    temployee temployee_cin_key89 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key89 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key89;
       public                 postgres    false    224            W           2606    76663    temployee temployee_cin_key9 
   CONSTRAINT     V   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key9 UNIQUE (cin);
 F   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key9;
       public                 postgres    false    224            Y           2606    76665    temployee temployee_cin_key90 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key90 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key90;
       public                 postgres    false    224            [           2606    76667    temployee temployee_cin_key91 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key91 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key91;
       public                 postgres    false    224            ]           2606    76669    temployee temployee_cin_key92 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key92 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key92;
       public                 postgres    false    224            _           2606    76671    temployee temployee_cin_key93 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key93 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key93;
       public                 postgres    false    224            a           2606    76673    temployee temployee_cin_key94 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key94 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key94;
       public                 postgres    false    224            c           2606    76675    temployee temployee_cin_key95 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key95 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key95;
       public                 postgres    false    224            e           2606    76677    temployee temployee_cin_key96 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key96 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key96;
       public                 postgres    false    224            g           2606    76679    temployee temployee_cin_key97 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key97 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key97;
       public                 postgres    false    224            i           2606    76681    temployee temployee_cin_key98 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key98 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key98;
       public                 postgres    false    224            k           2606    76683    temployee temployee_cin_key99 
   CONSTRAINT     W   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_cin_key99 UNIQUE (cin);
 G   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_cin_key99;
       public                 postgres    false    224            m           2606    21858    temployee temployee_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.temployee
    ADD CONSTRAINT temployee_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.temployee DROP CONSTRAINT temployee_pkey;
       public                 postgres    false    224            o           2606    21860    tfacture tfacture_id_dem_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.tfacture
    ADD CONSTRAINT tfacture_id_dem_key UNIQUE (id_dem);
 F   ALTER TABLE ONLY public.tfacture DROP CONSTRAINT tfacture_id_dem_key;
       public                 postgres    false    226            q           2606    21862    tfacture tfacture_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.tfacture
    ADD CONSTRAINT tfacture_pkey PRIMARY KEY (id_fact);
 @   ALTER TABLE ONLY public.tfacture DROP CONSTRAINT tfacture_pkey;
       public                 postgres    false    226            s           2606    21864    tfamille tfamille_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tfamille
    ADD CONSTRAINT tfamille_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tfamille DROP CONSTRAINT tfamille_pkey;
       public                 postgres    false    228            u           2606    21866     tlignedemande tlignedemande_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tlignedemande
    ADD CONSTRAINT tlignedemande_pkey PRIMARY KEY (id_ligne);
 J   ALTER TABLE ONLY public.tlignedemande DROP CONSTRAINT tlignedemande_pkey;
       public                 postgres    false    230            w           2606    21868     tlignefacture tlignefacture_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tlignefacture
    ADD CONSTRAINT tlignefacture_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.tlignefacture DROP CONSTRAINT tlignefacture_pkey;
       public                 postgres    false    232            y           2606    21870    tpaiement tpaiement_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tpaiement
    ADD CONSTRAINT tpaiement_pkey PRIMARY KEY (id_p);
 B   ALTER TABLE ONLY public.tpaiement DROP CONSTRAINT tpaiement_pkey;
       public                 postgres    false    234            {           2606    21872    tservices tservices_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tservices
    ADD CONSTRAINT tservices_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tservices DROP CONSTRAINT tservices_pkey;
       public                 postgres    false    236            '           2606    21874    societe tsociete_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.societe
    ADD CONSTRAINT tsociete_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.societe DROP CONSTRAINT tsociete_pkey;
       public                 postgres    false    217            }           2606    76896    tusers tusers_login_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key UNIQUE (login);
 A   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key;
       public                 postgres    false    239                       2606    76898    tusers tusers_login_key1 
   CONSTRAINT     T   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key1 UNIQUE (login);
 B   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key1;
       public                 postgres    false    239            �           2606    76900    tusers tusers_login_key10 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key10 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key10;
       public                 postgres    false    239            �           2606    76902    tusers tusers_login_key100 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key100 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key100;
       public                 postgres    false    239            �           2606    76904    tusers tusers_login_key101 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key101 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key101;
       public                 postgres    false    239            �           2606    76906    tusers tusers_login_key102 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key102 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key102;
       public                 postgres    false    239            �           2606    76908    tusers tusers_login_key103 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key103 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key103;
       public                 postgres    false    239            �           2606    76910    tusers tusers_login_key104 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key104 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key104;
       public                 postgres    false    239            �           2606    76912    tusers tusers_login_key105 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key105 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key105;
       public                 postgres    false    239            �           2606    76914    tusers tusers_login_key106 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key106 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key106;
       public                 postgres    false    239            �           2606    76916    tusers tusers_login_key107 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key107 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key107;
       public                 postgres    false    239            �           2606    76918    tusers tusers_login_key108 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key108 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key108;
       public                 postgres    false    239            �           2606    76920    tusers tusers_login_key109 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key109 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key109;
       public                 postgres    false    239            �           2606    76922    tusers tusers_login_key11 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key11 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key11;
       public                 postgres    false    239            �           2606    76924    tusers tusers_login_key110 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key110 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key110;
       public                 postgres    false    239            �           2606    76926    tusers tusers_login_key111 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key111 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key111;
       public                 postgres    false    239            �           2606    76928    tusers tusers_login_key112 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key112 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key112;
       public                 postgres    false    239            �           2606    76930    tusers tusers_login_key113 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key113 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key113;
       public                 postgres    false    239            �           2606    76932    tusers tusers_login_key114 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key114 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key114;
       public                 postgres    false    239            �           2606    76934    tusers tusers_login_key115 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key115 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key115;
       public                 postgres    false    239            �           2606    76936    tusers tusers_login_key116 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key116 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key116;
       public                 postgres    false    239            �           2606    76938    tusers tusers_login_key117 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key117 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key117;
       public                 postgres    false    239            �           2606    76940    tusers tusers_login_key118 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key118 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key118;
       public                 postgres    false    239            �           2606    76942    tusers tusers_login_key119 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key119 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key119;
       public                 postgres    false    239            �           2606    76944    tusers tusers_login_key12 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key12 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key12;
       public                 postgres    false    239            �           2606    76946    tusers tusers_login_key120 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key120 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key120;
       public                 postgres    false    239            �           2606    76948    tusers tusers_login_key121 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key121 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key121;
       public                 postgres    false    239            �           2606    76950    tusers tusers_login_key122 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key122 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key122;
       public                 postgres    false    239            �           2606    76952    tusers tusers_login_key123 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key123 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key123;
       public                 postgres    false    239            �           2606    76954    tusers tusers_login_key124 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key124 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key124;
       public                 postgres    false    239            �           2606    76956    tusers tusers_login_key125 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key125 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key125;
       public                 postgres    false    239            �           2606    76958    tusers tusers_login_key126 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key126 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key126;
       public                 postgres    false    239            �           2606    76960    tusers tusers_login_key127 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key127 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key127;
       public                 postgres    false    239            �           2606    76962    tusers tusers_login_key128 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key128 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key128;
       public                 postgres    false    239            �           2606    76964    tusers tusers_login_key129 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key129 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key129;
       public                 postgres    false    239            �           2606    76966    tusers tusers_login_key13 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key13 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key13;
       public                 postgres    false    239            �           2606    76968    tusers tusers_login_key130 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key130 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key130;
       public                 postgres    false    239            �           2606    76970    tusers tusers_login_key131 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key131 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key131;
       public                 postgres    false    239            �           2606    76972    tusers tusers_login_key132 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key132 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key132;
       public                 postgres    false    239            �           2606    76974    tusers tusers_login_key133 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key133 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key133;
       public                 postgres    false    239            �           2606    76976    tusers tusers_login_key134 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key134 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key134;
       public                 postgres    false    239            �           2606    76978    tusers tusers_login_key135 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key135 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key135;
       public                 postgres    false    239            �           2606    76980    tusers tusers_login_key136 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key136 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key136;
       public                 postgres    false    239            �           2606    76982    tusers tusers_login_key137 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key137 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key137;
       public                 postgres    false    239            �           2606    76984    tusers tusers_login_key138 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key138 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key138;
       public                 postgres    false    239            �           2606    76986    tusers tusers_login_key139 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key139 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key139;
       public                 postgres    false    239            �           2606    76988    tusers tusers_login_key14 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key14 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key14;
       public                 postgres    false    239            �           2606    76990    tusers tusers_login_key140 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key140 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key140;
       public                 postgres    false    239            �           2606    76992    tusers tusers_login_key141 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key141 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key141;
       public                 postgres    false    239            �           2606    76994    tusers tusers_login_key142 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key142 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key142;
       public                 postgres    false    239            �           2606    76996    tusers tusers_login_key143 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key143 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key143;
       public                 postgres    false    239            �           2606    76998    tusers tusers_login_key144 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key144 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key144;
       public                 postgres    false    239            �           2606    77000    tusers tusers_login_key145 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key145 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key145;
       public                 postgres    false    239            �           2606    77002    tusers tusers_login_key146 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key146 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key146;
       public                 postgres    false    239            �           2606    77004    tusers tusers_login_key147 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key147 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key147;
       public                 postgres    false    239            �           2606    77006    tusers tusers_login_key148 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key148 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key148;
       public                 postgres    false    239            �           2606    77008    tusers tusers_login_key149 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key149 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key149;
       public                 postgres    false    239            �           2606    77010    tusers tusers_login_key15 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key15 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key15;
       public                 postgres    false    239            �           2606    77012    tusers tusers_login_key150 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key150 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key150;
       public                 postgres    false    239            �           2606    77014    tusers tusers_login_key151 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key151 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key151;
       public                 postgres    false    239            �           2606    77016    tusers tusers_login_key152 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key152 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key152;
       public                 postgres    false    239            �           2606    77018    tusers tusers_login_key153 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key153 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key153;
       public                 postgres    false    239            �           2606    77020    tusers tusers_login_key154 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key154 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key154;
       public                 postgres    false    239            �           2606    77022    tusers tusers_login_key155 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key155 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key155;
       public                 postgres    false    239            �           2606    77024    tusers tusers_login_key156 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key156 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key156;
       public                 postgres    false    239            �           2606    77026    tusers tusers_login_key157 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key157 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key157;
       public                 postgres    false    239                       2606    77028    tusers tusers_login_key158 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key158 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key158;
       public                 postgres    false    239                       2606    77030    tusers tusers_login_key159 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key159 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key159;
       public                 postgres    false    239                       2606    77032    tusers tusers_login_key16 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key16 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key16;
       public                 postgres    false    239                       2606    77034    tusers tusers_login_key160 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key160 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key160;
       public                 postgres    false    239            	           2606    77036    tusers tusers_login_key161 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key161 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key161;
       public                 postgres    false    239                       2606    77038    tusers tusers_login_key162 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key162 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key162;
       public                 postgres    false    239                       2606    77040    tusers tusers_login_key163 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key163 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key163;
       public                 postgres    false    239                       2606    77042    tusers tusers_login_key164 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key164 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key164;
       public                 postgres    false    239                       2606    77044    tusers tusers_login_key165 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key165 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key165;
       public                 postgres    false    239                       2606    77046    tusers tusers_login_key166 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key166 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key166;
       public                 postgres    false    239                       2606    77048    tusers tusers_login_key167 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key167 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key167;
       public                 postgres    false    239                       2606    77050    tusers tusers_login_key168 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key168 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key168;
       public                 postgres    false    239                       2606    77052    tusers tusers_login_key169 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key169 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key169;
       public                 postgres    false    239                       2606    77054    tusers tusers_login_key17 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key17 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key17;
       public                 postgres    false    239                       2606    77056    tusers tusers_login_key170 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key170 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key170;
       public                 postgres    false    239                       2606    77058    tusers tusers_login_key171 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key171 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key171;
       public                 postgres    false    239            !           2606    77060    tusers tusers_login_key172 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key172 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key172;
       public                 postgres    false    239            #           2606    77062    tusers tusers_login_key173 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key173 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key173;
       public                 postgres    false    239            %           2606    77064    tusers tusers_login_key174 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key174 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key174;
       public                 postgres    false    239            '           2606    77066    tusers tusers_login_key175 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key175 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key175;
       public                 postgres    false    239            )           2606    77068    tusers tusers_login_key176 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key176 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key176;
       public                 postgres    false    239            +           2606    77070    tusers tusers_login_key177 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key177 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key177;
       public                 postgres    false    239            -           2606    77072    tusers tusers_login_key178 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key178 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key178;
       public                 postgres    false    239            /           2606    77074    tusers tusers_login_key179 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key179 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key179;
       public                 postgres    false    239            1           2606    77076    tusers tusers_login_key18 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key18 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key18;
       public                 postgres    false    239            3           2606    77078    tusers tusers_login_key180 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key180 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key180;
       public                 postgres    false    239            5           2606    77080    tusers tusers_login_key181 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key181 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key181;
       public                 postgres    false    239            7           2606    77082    tusers tusers_login_key182 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key182 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key182;
       public                 postgres    false    239            9           2606    77084    tusers tusers_login_key183 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key183 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key183;
       public                 postgres    false    239            ;           2606    77086    tusers tusers_login_key184 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key184 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key184;
       public                 postgres    false    239            =           2606    77088    tusers tusers_login_key185 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key185 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key185;
       public                 postgres    false    239            ?           2606    77090    tusers tusers_login_key186 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key186 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key186;
       public                 postgres    false    239            A           2606    77092    tusers tusers_login_key187 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key187 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key187;
       public                 postgres    false    239            C           2606    77094    tusers tusers_login_key188 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key188 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key188;
       public                 postgres    false    239            E           2606    77096    tusers tusers_login_key189 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key189 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key189;
       public                 postgres    false    239            G           2606    77098    tusers tusers_login_key19 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key19 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key19;
       public                 postgres    false    239            I           2606    77100    tusers tusers_login_key190 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key190 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key190;
       public                 postgres    false    239            K           2606    77102    tusers tusers_login_key191 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key191 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key191;
       public                 postgres    false    239            M           2606    77104    tusers tusers_login_key192 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key192 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key192;
       public                 postgres    false    239            O           2606    77106    tusers tusers_login_key193 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key193 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key193;
       public                 postgres    false    239            Q           2606    77108    tusers tusers_login_key194 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key194 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key194;
       public                 postgres    false    239            S           2606    77110    tusers tusers_login_key195 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key195 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key195;
       public                 postgres    false    239            U           2606    77112    tusers tusers_login_key196 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key196 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key196;
       public                 postgres    false    239            W           2606    77114    tusers tusers_login_key197 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key197 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key197;
       public                 postgres    false    239            Y           2606    77116    tusers tusers_login_key198 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key198 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key198;
       public                 postgres    false    239            [           2606    77118    tusers tusers_login_key199 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key199 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key199;
       public                 postgres    false    239            ]           2606    77120    tusers tusers_login_key2 
   CONSTRAINT     T   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key2 UNIQUE (login);
 B   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key2;
       public                 postgres    false    239            _           2606    77122    tusers tusers_login_key20 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key20 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key20;
       public                 postgres    false    239            a           2606    77124    tusers tusers_login_key200 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key200 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key200;
       public                 postgres    false    239            c           2606    77126    tusers tusers_login_key201 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key201 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key201;
       public                 postgres    false    239            e           2606    77128    tusers tusers_login_key202 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key202 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key202;
       public                 postgres    false    239            g           2606    77130    tusers tusers_login_key203 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key203 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key203;
       public                 postgres    false    239            i           2606    77132    tusers tusers_login_key204 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key204 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key204;
       public                 postgres    false    239            k           2606    77134    tusers tusers_login_key205 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key205 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key205;
       public                 postgres    false    239            m           2606    77136    tusers tusers_login_key206 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key206 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key206;
       public                 postgres    false    239            o           2606    77138    tusers tusers_login_key207 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key207 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key207;
       public                 postgres    false    239            q           2606    77312    tusers tusers_login_key208 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key208 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key208;
       public                 postgres    false    239            s           2606    77314    tusers tusers_login_key209 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key209 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key209;
       public                 postgres    false    239            u           2606    77140    tusers tusers_login_key21 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key21 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key21;
       public                 postgres    false    239            w           2606    76894    tusers tusers_login_key210 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key210 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key210;
       public                 postgres    false    239            y           2606    77316    tusers tusers_login_key211 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key211 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key211;
       public                 postgres    false    239            {           2606    76892    tusers tusers_login_key212 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key212 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key212;
       public                 postgres    false    239            }           2606    77318    tusers tusers_login_key213 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key213 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key213;
       public                 postgres    false    239                       2606    76890    tusers tusers_login_key214 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key214 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key214;
       public                 postgres    false    239            �           2606    77320    tusers tusers_login_key215 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key215 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key215;
       public                 postgres    false    239            �           2606    76888    tusers tusers_login_key216 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key216 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key216;
       public                 postgres    false    239            �           2606    77322    tusers tusers_login_key217 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key217 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key217;
       public                 postgres    false    239            �           2606    77324    tusers tusers_login_key218 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key218 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key218;
       public                 postgres    false    239            �           2606    77326    tusers tusers_login_key219 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key219 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key219;
       public                 postgres    false    239            �           2606    77142    tusers tusers_login_key22 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key22 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key22;
       public                 postgres    false    239            �           2606    76886    tusers tusers_login_key220 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key220 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key220;
       public                 postgres    false    239            �           2606    77328    tusers tusers_login_key221 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key221 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key221;
       public                 postgres    false    239            �           2606    76884    tusers tusers_login_key222 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key222 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key222;
       public                 postgres    false    239            �           2606    77330    tusers tusers_login_key223 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key223 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key223;
       public                 postgres    false    239            �           2606    77332    tusers tusers_login_key224 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key224 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key224;
       public                 postgres    false    239            �           2606    77334    tusers tusers_login_key225 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key225 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key225;
       public                 postgres    false    239            �           2606    76882    tusers tusers_login_key226 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key226 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key226;
       public                 postgres    false    239            �           2606    77336    tusers tusers_login_key227 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key227 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key227;
       public                 postgres    false    239            �           2606    76880    tusers tusers_login_key228 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key228 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key228;
       public                 postgres    false    239            �           2606    77338    tusers tusers_login_key229 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key229 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key229;
       public                 postgres    false    239            �           2606    77144    tusers tusers_login_key23 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key23 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key23;
       public                 postgres    false    239            �           2606    77340    tusers tusers_login_key230 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key230 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key230;
       public                 postgres    false    239            �           2606    77342    tusers tusers_login_key231 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key231 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key231;
       public                 postgres    false    239            �           2606    76878    tusers tusers_login_key232 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key232 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key232;
       public                 postgres    false    239            �           2606    77344    tusers tusers_login_key233 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key233 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key233;
       public                 postgres    false    239            �           2606    76876    tusers tusers_login_key234 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key234 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key234;
       public                 postgres    false    239            �           2606    77346    tusers tusers_login_key235 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key235 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key235;
       public                 postgres    false    239            �           2606    77348    tusers tusers_login_key236 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key236 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key236;
       public                 postgres    false    239            �           2606    77350    tusers tusers_login_key237 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key237 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key237;
       public                 postgres    false    239            �           2606    76874    tusers tusers_login_key238 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key238 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key238;
       public                 postgres    false    239            �           2606    77352    tusers tusers_login_key239 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key239 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key239;
       public                 postgres    false    239            �           2606    77146    tusers tusers_login_key24 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key24 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key24;
       public                 postgres    false    239            �           2606    77354    tusers tusers_login_key240 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key240 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key240;
       public                 postgres    false    239            �           2606    76872    tusers tusers_login_key241 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key241 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key241;
       public                 postgres    false    239            �           2606    76870    tusers tusers_login_key242 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key242 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key242;
       public                 postgres    false    239            �           2606    77356    tusers tusers_login_key243 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key243 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key243;
       public                 postgres    false    239            �           2606    76868    tusers tusers_login_key244 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key244 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key244;
       public                 postgres    false    239            �           2606    77358    tusers tusers_login_key245 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key245 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key245;
       public                 postgres    false    239            �           2606    76866    tusers tusers_login_key246 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key246 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key246;
       public                 postgres    false    239            �           2606    77360    tusers tusers_login_key247 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key247 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key247;
       public                 postgres    false    239            �           2606    76864    tusers tusers_login_key248 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key248 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key248;
       public                 postgres    false    239            �           2606    77362    tusers tusers_login_key249 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key249 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key249;
       public                 postgres    false    239            �           2606    77148    tusers tusers_login_key25 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key25 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key25;
       public                 postgres    false    239            �           2606    76862    tusers tusers_login_key250 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key250 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key250;
       public                 postgres    false    239            �           2606    77364    tusers tusers_login_key251 
   CONSTRAINT     V   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key251 UNIQUE (login);
 D   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key251;
       public                 postgres    false    239            �           2606    77150    tusers tusers_login_key26 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key26 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key26;
       public                 postgres    false    239            �           2606    77152    tusers tusers_login_key27 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key27 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key27;
       public                 postgres    false    239            �           2606    77154    tusers tusers_login_key28 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key28 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key28;
       public                 postgres    false    239            �           2606    77156    tusers tusers_login_key29 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key29 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key29;
       public                 postgres    false    239            �           2606    77158    tusers tusers_login_key3 
   CONSTRAINT     T   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key3 UNIQUE (login);
 B   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key3;
       public                 postgres    false    239            �           2606    77160    tusers tusers_login_key30 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key30 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key30;
       public                 postgres    false    239            �           2606    77162    tusers tusers_login_key31 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key31 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key31;
       public                 postgres    false    239            �           2606    77164    tusers tusers_login_key32 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key32 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key32;
       public                 postgres    false    239            �           2606    77166    tusers tusers_login_key33 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key33 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key33;
       public                 postgres    false    239            �           2606    77168    tusers tusers_login_key34 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key34 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key34;
       public                 postgres    false    239            �           2606    77170    tusers tusers_login_key35 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key35 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key35;
       public                 postgres    false    239            �           2606    77172    tusers tusers_login_key36 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key36 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key36;
       public                 postgres    false    239            �           2606    77174    tusers tusers_login_key37 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key37 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key37;
       public                 postgres    false    239            �           2606    77176    tusers tusers_login_key38 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key38 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key38;
       public                 postgres    false    239            �           2606    77178    tusers tusers_login_key39 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key39 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key39;
       public                 postgres    false    239            �           2606    77180    tusers tusers_login_key4 
   CONSTRAINT     T   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key4 UNIQUE (login);
 B   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key4;
       public                 postgres    false    239            �           2606    77182    tusers tusers_login_key40 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key40 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key40;
       public                 postgres    false    239            �           2606    77184    tusers tusers_login_key41 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key41 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key41;
       public                 postgres    false    239            �           2606    77186    tusers tusers_login_key42 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key42 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key42;
       public                 postgres    false    239            �           2606    77188    tusers tusers_login_key43 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key43 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key43;
       public                 postgres    false    239            �           2606    77190    tusers tusers_login_key44 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key44 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key44;
       public                 postgres    false    239            �           2606    77192    tusers tusers_login_key45 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key45 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key45;
       public                 postgres    false    239            �           2606    77194    tusers tusers_login_key46 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key46 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key46;
       public                 postgres    false    239                       2606    77196    tusers tusers_login_key47 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key47 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key47;
       public                 postgres    false    239                       2606    77198    tusers tusers_login_key48 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key48 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key48;
       public                 postgres    false    239                       2606    77200    tusers tusers_login_key49 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key49 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key49;
       public                 postgres    false    239                       2606    77202    tusers tusers_login_key5 
   CONSTRAINT     T   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key5 UNIQUE (login);
 B   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key5;
       public                 postgres    false    239            	           2606    77204    tusers tusers_login_key50 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key50 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key50;
       public                 postgres    false    239                       2606    77206    tusers tusers_login_key51 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key51 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key51;
       public                 postgres    false    239                       2606    77208    tusers tusers_login_key52 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key52 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key52;
       public                 postgres    false    239                       2606    77210    tusers tusers_login_key53 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key53 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key53;
       public                 postgres    false    239                       2606    77212    tusers tusers_login_key54 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key54 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key54;
       public                 postgres    false    239                       2606    77214    tusers tusers_login_key55 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key55 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key55;
       public                 postgres    false    239                       2606    77216    tusers tusers_login_key56 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key56 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key56;
       public                 postgres    false    239                       2606    77218    tusers tusers_login_key57 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key57 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key57;
       public                 postgres    false    239                       2606    77220    tusers tusers_login_key58 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key58 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key58;
       public                 postgres    false    239                       2606    77222    tusers tusers_login_key59 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key59 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key59;
       public                 postgres    false    239                       2606    77224    tusers tusers_login_key6 
   CONSTRAINT     T   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key6 UNIQUE (login);
 B   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key6;
       public                 postgres    false    239                       2606    77226    tusers tusers_login_key60 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key60 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key60;
       public                 postgres    false    239            !           2606    77228    tusers tusers_login_key61 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key61 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key61;
       public                 postgres    false    239            #           2606    77230    tusers tusers_login_key62 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key62 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key62;
       public                 postgres    false    239            %           2606    77232    tusers tusers_login_key63 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key63 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key63;
       public                 postgres    false    239            '           2606    77234    tusers tusers_login_key64 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key64 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key64;
       public                 postgres    false    239            )           2606    77236    tusers tusers_login_key65 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key65 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key65;
       public                 postgres    false    239            +           2606    77238    tusers tusers_login_key66 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key66 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key66;
       public                 postgres    false    239            -           2606    77240    tusers tusers_login_key67 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key67 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key67;
       public                 postgres    false    239            /           2606    77242    tusers tusers_login_key68 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key68 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key68;
       public                 postgres    false    239            1           2606    77244    tusers tusers_login_key69 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key69 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key69;
       public                 postgres    false    239            3           2606    77246    tusers tusers_login_key7 
   CONSTRAINT     T   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key7 UNIQUE (login);
 B   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key7;
       public                 postgres    false    239            5           2606    77248    tusers tusers_login_key70 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key70 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key70;
       public                 postgres    false    239            7           2606    77250    tusers tusers_login_key71 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key71 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key71;
       public                 postgres    false    239            9           2606    77252    tusers tusers_login_key72 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key72 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key72;
       public                 postgres    false    239            ;           2606    77254    tusers tusers_login_key73 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key73 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key73;
       public                 postgres    false    239            =           2606    77256    tusers tusers_login_key74 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key74 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key74;
       public                 postgres    false    239            ?           2606    77258    tusers tusers_login_key75 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key75 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key75;
       public                 postgres    false    239            A           2606    77260    tusers tusers_login_key76 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key76 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key76;
       public                 postgres    false    239            C           2606    77262    tusers tusers_login_key77 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key77 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key77;
       public                 postgres    false    239            E           2606    77264    tusers tusers_login_key78 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key78 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key78;
       public                 postgres    false    239            G           2606    77266    tusers tusers_login_key79 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key79 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key79;
       public                 postgres    false    239            I           2606    77268    tusers tusers_login_key8 
   CONSTRAINT     T   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key8 UNIQUE (login);
 B   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key8;
       public                 postgres    false    239            K           2606    77270    tusers tusers_login_key80 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key80 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key80;
       public                 postgres    false    239            M           2606    77272    tusers tusers_login_key81 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key81 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key81;
       public                 postgres    false    239            O           2606    77274    tusers tusers_login_key82 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key82 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key82;
       public                 postgres    false    239            Q           2606    77276    tusers tusers_login_key83 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key83 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key83;
       public                 postgres    false    239            S           2606    77278    tusers tusers_login_key84 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key84 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key84;
       public                 postgres    false    239            U           2606    77280    tusers tusers_login_key85 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key85 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key85;
       public                 postgres    false    239            W           2606    77282    tusers tusers_login_key86 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key86 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key86;
       public                 postgres    false    239            Y           2606    77284    tusers tusers_login_key87 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key87 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key87;
       public                 postgres    false    239            [           2606    77286    tusers tusers_login_key88 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key88 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key88;
       public                 postgres    false    239            ]           2606    77288    tusers tusers_login_key89 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key89 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key89;
       public                 postgres    false    239            _           2606    77290    tusers tusers_login_key9 
   CONSTRAINT     T   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key9 UNIQUE (login);
 B   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key9;
       public                 postgres    false    239            a           2606    77292    tusers tusers_login_key90 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key90 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key90;
       public                 postgres    false    239            c           2606    77294    tusers tusers_login_key91 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key91 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key91;
       public                 postgres    false    239            e           2606    77296    tusers tusers_login_key92 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key92 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key92;
       public                 postgres    false    239            g           2606    77298    tusers tusers_login_key93 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key93 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key93;
       public                 postgres    false    239            i           2606    77300    tusers tusers_login_key94 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key94 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key94;
       public                 postgres    false    239            k           2606    77302    tusers tusers_login_key95 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key95 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key95;
       public                 postgres    false    239            m           2606    77304    tusers tusers_login_key96 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key96 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key96;
       public                 postgres    false    239            o           2606    77306    tusers tusers_login_key97 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key97 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key97;
       public                 postgres    false    239            q           2606    77308    tusers tusers_login_key98 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key98 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key98;
       public                 postgres    false    239            s           2606    77310    tusers tusers_login_key99 
   CONSTRAINT     U   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_login_key99 UNIQUE (login);
 C   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_login_key99;
       public                 postgres    false    239            u           2606    22292    tusers tusers_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tusers
    ADD CONSTRAINT tusers_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tusers DROP CONSTRAINT tusers_pkey;
       public                 postgres    false    239            x           2606    76455     tarticle tarticle_familleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tarticle
    ADD CONSTRAINT "tarticle_familleId_fkey" FOREIGN KEY ("familleId") REFERENCES public.tfamille(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.tarticle DROP CONSTRAINT "tarticle_familleId_fkey";
       public               postgres    false    218    4211    228            y           2606    77379    tfacture tfacture_id_dem_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tfacture
    ADD CONSTRAINT tfacture_id_dem_fkey FOREIGN KEY (id_dem) REFERENCES public.tdemandeservice(id_dem) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.tfacture DROP CONSTRAINT tfacture_id_dem_fkey;
       public               postgres    false    226    222    3813            z           2606    77365 ,   tlignedemande tlignedemande_demande_srv_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tlignedemande
    ADD CONSTRAINT tlignedemande_demande_srv_fkey FOREIGN KEY (demande_srv) REFERENCES public.tdemandeservice(id_dem) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.tlignedemande DROP CONSTRAINT tlignedemande_demande_srv_fkey;
       public               postgres    false    230    3813    222            {           2606    77384 (   tlignefacture tlignefacture_id_fact_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tlignefacture
    ADD CONSTRAINT tlignefacture_id_fact_fkey FOREIGN KEY (id_fact) REFERENCES public.tfacture(id_fact) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.tlignefacture DROP CONSTRAINT tlignefacture_id_fact_fkey;
       public               postgres    false    232    226    4209            |           2606    77370 $   tpaiement tpaiement_demande_srv_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tpaiement
    ADD CONSTRAINT tpaiement_demande_srv_fkey FOREIGN KEY (demande_srv) REFERENCES public.tdemandeservice(id_dem) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.tpaiement DROP CONSTRAINT tpaiement_demande_srv_fkey;
       public               postgres    false    3813    222    234            }           2606    76854 $   tservices tservices_categorieid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tservices
    ADD CONSTRAINT tservices_categorieid_fkey FOREIGN KEY (categorieid) REFERENCES public.tcategorieservice(id) ON UPDATE CASCADE;
 N   ALTER TABLE ONLY public.tservices DROP CONSTRAINT tservices_categorieid_fkey;
       public               postgres    false    3811    220    236            '   +   x���@��))���)�%e��%����ə�%�zY�\1z\\\ y8          l   x�3�tN�+)JUp,-�Wp�QpJ,J�N�47�42��4�*MU��ML�H�Sp�H�(�T�;���\�9���J��H�Bpi��E���E
!�y��
F&F���\1z\\\ �� �         �  x��[�n�8>��B����ӷ$;�� �5�$��Ȳb+i���:�o{�G��bO���7�'�*ՒH���I��ɪ��*2����#c��[�4�s�k��ES��i�T��ӗ/E�f�2O0�3���X��_����p��!|l��њ��o�O|Z�����ʿ���b��?����e�^�"�W^�-Q^�&�M�Ȅ��X�E�?�`��6����������7�C��<	��S /<ࣅ�1����/M^�#�^�������C�&�50�"X7��>^�|�; 0�*���֒˲���̣���z��Bp8JD��*��E��5��u�/�ۜ��=�S�E�+Wh�1<yΖ�s��������:Ņ���mS|)wYS�;�f�� RZ�S�O�ϸ�w��!��ރ����"��/�m�S ^ܕ�x�&�bt��b����޻��,��6�^���\�.�b��\�vB.�! ���+��	 �U^�}�zAZUe]��:�#(s*�Ki��V(��J�1��>�E�X6��@ ���Ā8dY^�eA{o���>O�@
:��8���ǉ�`hw��x׾���A���K���)d���}l��ǧmn�}z[��ls��l���� �y��j����P�������,v� ��`ӫË&���v���͂T>go�\�@CR�3�3�]�5��t����
(0#:����o۰h-��q�{&{���^�[�W���7��c����Z��z=k��?�z�1�NI��}F1�����;���+�|äǗf=Ni��ڵ����x_)�l����wi���`����b���b��B�񘓋��N���q�9������ŝ9���Q�\��J���~T9tBY-�f�s).97�w�m|��j��k�6h{�����Kyе|J1�wM+�H��l�|�IYs�6a��O����]�E��lkv�.�"Sʂi�ݪ�'�k"�@�a	7'm͵��2%�0�s�x�R�s�����V2�q4?TƻCt�I�>�x��������T)��ʚ	)e%N}h�7q-W��E#�P#�P�H���+C�JSů(��DW�o��i�F;�%�#9��$���W�B'
�Ir{.*�� B�U�<W�0ۤ�*��D%�� ���ÿ��|{��;�}�U���h��]q=��J�d}]��B�U���Bo6�*ls䈌�,%������{+�/�bWkU���`ZD�#b�.L5�UZ��&�CŸ�i!5�Iƶ�
	���d�g�LK) FhKY5U{�]�u�Q3�CB�X�����M#�^Ša�<^�X�5���*$b���':������@�����.{�K���1=��	�9ƪ$��(�^kNw�>}6�}T��{�8%���'�;��ڄRmHAuJ^��J|	�+�Yi���R\"K>��j[��
��7�RQ�A3���s�`��G���m��K��'���6�o�Ǵ�6�n����F��Љ.C����W[,�d�Wp��iEudD|Y=ַ�Ë�5Gu>�1�g~BU�N�q���ˮ��� �=��+�!�#>��}YE�VQ��.Qd�f�iF2r7h$�*�a�y��W�t����֞�����feT�OJ�s���`�����;(G���M�h{������[��oEv��,t�V_��
�w�k,�V�'N1�<3�6X�ۖ����pdK�K�Y�W&�)#۷��C&��[0H�<#n@O�/�Lj�'��9��^Q2�7�n��^�AN��3�cⰘ94�ebj�����%Cԉ��P��`�����	��b�ʒF�aj�$#�ݗULL�-tRVF�C�i�7��+�ы���!��E�Ŧ�<��`������ J�*C5�����'��;p��Ǥ1�0Ɍ2�H����<����"�cK ��G��9�9�h,�+��Y�-����@ �&c�@��Bp81Y<��֗���*D��L��bO�<�A�ŉS&��]�-�I�����Y$De�U>�xŨ�H��J��JL��W���U�Gяl�"��@|����sS��&_�1zs��<x�DNp����G�0"T��[B��[*y�;�����G�-㴄8�qJ��K���n�
��S��|�+�p�DjIh?1�~��Y��#\��\B,��ԛ��Z����6��@��I䖸{:���G�Ӛ�h��iܸ2q>1]�0u��ιjr���1��Wt�,h�mlF:�� n�[�1�d3W(�D�̭�د�&&�6���q�	�Lp����V.p�V9"��g�Pe�%G�i��U[8��!��o�����'�! {�/E���ұͯF�q�Ÿ�pu�9�n�kB�Қ<3$L������}�����T�}Ld��e��	8��ŐjG�(g���c�.6 !NT��I#Ԅ�oy.=Xġ�b��Y��R0ݵ<�x�`h�,���t.ٓŘDd\�׿]/3T8�S�%��dϽ6ױ�y�/&/z��ä@$F�$�ԩ��>=��1��w�/�dj*2������E"3�N�"�bn���8�SH��b�������gZ@$���zR��a�Ѿ�br��i85L�n���&�:E8�����'����D���<|1��[5�`�D����~�9�^����l����6�� �I{�	Ā�a��e��XՔl=��^���#�?>�V�*�#�v=����-d��
7��� ��~Z��˾~ͼ�߶^ ��Ǒ(X��t��i�x#�&�a&a�?��/�o߼ۇ[\���ȋ�QO�Հ����&�6"��w>�T�=|}�,kId1�X����$�I$�e�:��᧕�T����ɓ������.D����Z�	�+n�y)������do�G}}�A�c�D�L���K��j���^��L߾�>N�!�!���S��X���{6?�����<�Al 9���g��:{�Or#"8%�e��W��� o��         (   x�3�LN,1�2�L,-)J�2�LLL�2�LJJ����� �$�         '  x���KK1���S�.f&ɾn=���A��m���������B��ɏɄ��]�UF��jD9WH@���&d�2�؇.6@D�R�9�[_�� ��~��(f\�-"~��.�u���"��]�Rƾ��?�2	^�p{���rn�{}�9�\S	lS�h�A{�t�;r�~�)��pJ���!,M������|ܟ��<.SR-)\�M�E��!,ݻʿQ�ϻw�k��a,k� ��{�Ҹn�n�����>L����!6Q��fi����-��+EndA?��b�R�M���           x��ZKo7>ӿB�BK.wu3ںR���K�\ȅ�H2*�(�_�yIZ-w�MX�7���3�<������*o�n3{Lۧ�q�`a�`v	�?�5`Yj,��
�ӽ����!�]��f�p�[T����re+�&Y�1�׈��]��M�c�P�m�DwNV�`j (��Ys��N���7l���ͭC�{�uT퍯KН#t�ż�|H��n��v�!}}�,�P��^�W���	Eʻ@�z�i�I��5�[|v��Cǳ�mrMȖ���������]ڿ<��Wsp��Ä0���.B��;?]9�v���#(��/���y�[�a[�c�ʧb7l�<���iv�ϯ_��\�U:Lp��-a{�]b���f�QGo�U��:��e����0׻�.ޮ�r?�>�7�����k�z�As[�_Wjn-�����q7���~y�G$�i��Z?�dlF2��:�`���_�}: �ܦ���W��sۿ���(6w$I
,<��i�E�ى���]�ӚV�[(�f~��5މ��x�3���oAG��	�u��Ó�/��W��3gw`u��/$4%�k�Q�yX�������4�i��?!��FGa�fAtC���M�1mv�W��������伐�D_GO����lư���Pno^Hh����<�	��.�t/<4�׿n;	�J(0�]^�3^Hh��jw�8K��seuC�V�j^HhJLH/kQ|0��F�P�r^X�ICr�s>!Y\�=rRL��9����s��>�U ��� �b�U45{�L�-d�N���(�u!8O󔻟��R`qM��r�PlpBp��1��\(��r�JV��R����ol�x�i'Y$s\���J�cL
~�^Va��w~�
�q*�|���p>K)j�Ƙ�ۑs�
���n�?�]�If��fa�Vl�I�am*��"L��o�ک�5٭�
�Q)T���q*�G�@����"cP*>v�8vK�t��P�q}����h�4��t�����3h&�>�֊�i
�g�Sa\�uB�T����
M5[��3ͩ0��:Y�"٨��4c)�Tt�9&�R�#r���B�oQ�16��։�5h�L�$Ĝ~0�FE��T�n�U�'aT����5��bch*%ٚyN�ݾ��M
7T1FE��Tjr5��
�L�D4v�9@���Lr*L��gqyh����i4�N�g�Sa'����*�٨࡜謕�Y;�dv�DV6�Y����q�i	�K��P-���7E�s�Q���|^�]�	��N(�P��Mhg%�%�x ���t^7Vg�GS�q���Vh>y6���@�I>��$YjƎ��4���1���,>f�U|��'����K��Z��ͩf��?�'� !?�-�q��� tu�u�io [��4��0��v��%rմh��9�P��K8�P{��~|�\�/��<����w�}���|��?	���+)�{�Z�f�Ԭ�z~��^���#���>�M����s��W&�K�`N[kTi�ew=[j���g^�����jh'�{�/���y^ ���]���8|]k�¢p��T�>X�%5���<�a�Uر\9��n��(4Y�9s�^����b�*�F�����������5 D0}�k;���2=J�U�I}�)V<U�[o;���2���	Sz;�oUCO�b�7����NX��Q�vі�Y8k8�'���Й#��Tg;�{���Ŭ�3�va�0�)i�D��Nطo'͛��:Yc���1,���LYhpiu��xb���DY�Y ��1}9�	Y���D�l��3�$�f7^`��1"�q$�,,���K�짫O����� g�         �   x�u�KjADץSdFѿ�s���K�@ƞ�3 �W%L,����H׫(�ߟg�m����s��g!��bp�仃.j���_���7͑���I�V��zw�hv"�����ɚ�t�c��[6���n)�B޹��C���U$�v9a�������ָ��tb"��
@�         B  x����n�0�g�)�!�+R[�-�&0��SF�m���T�l]�ݺ�9�&}�J�-+�MPt����s��Rm�f�o�V�A\��@ēR�r�f�C��A��ZmkꕏۺhnMh����D��,O�s�׈&��t��BG3�1ޫ��~��,�Ԁ� 7:���p�����9	�ސ�d��5G���Jw^}47-%Ks@�DS�i��M��U8���MP�f��8g Du�hvf��)�V�a�x�Q>����5��1�6d�h޻ڭ�`�^5�9�I����q]۠[7��+R���������ֶ����$%���X�����j�3^���:l���	t@#D9������7��
%�
�Z7B�wW�6˥�}����T�.ͣC��<��ހ(�v�RۧS֙6u��2	,�U��5N=���U������H�Q��)��*��=�x�DɁ�k�Q>��>�붮
����+��^;��w�`�>h#Dy���I���揄��~6�^u}��~�2f�c#!
q?�E[f���/�@�O�W�c,�Q��`�+(X���P �qߥ��N�Pt���F)��L�)           x���ێ�6��ɧ�}�O:�P�H� ��U�Bp/�2$�h�(~�XGTl��nc�J����i��C�N]�Z�ui�	i������t������Xnt�U7Qc��7p�o���|����p��z`��
.��oح�~6�|.w���7�����������	��+Q����@]çZ!^F�p��Dd�6�ڑ��p�<�E&i�"Iw�˽9{y�E�B����/�h�.kk�[M��;����N������\>jk�aA�C����	P�vg����u�C$8��q�@p&;��򩮾��v+�:�~�^W,��D�� �:�b 1�@D��0$xG\C2���.���������5�~�<"��p1���h���L��/q��D9� �M�'�p�8�����^��*�FFX*Q.���1��p�.1���1��q�ܡ(@	���
���Ǟ����'�q���̅���(�EC$�.�ΧM]���2������%�,Z@B��g�/>.Q��x�t^��0.Q��2E�t���A�`G�l^��9.Q��ׄ㢳`�q�
�!�EH�n����>o���Kel[�0Jz���bu��������6�6z��X�.�lŘ��LKT�װ���G���wGkj���g�i���5��>6j��|z6�v?ZW=�9tZ�"���"��P���Mp�#��3�� �MMϒ�)���rP�8-Q�ϲx�Y9H)��D�P���\���a$��堇G��o�P&�
��lT=�+��ig�&:뢂�A�;�MKT
O��Շ���!�����ݼ>T����������@�m�MY�/C#y��x�7P�� AN�W|>�� cO>̦�j���e:�\v%*S�͂�X^pV0��6�+Qos�`Y��%8H?r��,LTr�e��$t�*_
W��{ �0�Q8�۬`���d˔Q�#�2�S�JTI�"Ė9�Kq���Fb˜���9+Q�4�|����%p"�n���oA����HD����׊R�FU�         o  x��W�n�:]�_�}�3�$R��]mq���
\�
��@��n�#?�!�T���jaZ�Ix�f�����n^�~�L쟮�;�Crg��v���&��K�T]����j�2��+h&�L�4�ٗ��7h�RA	*��^	8�|RB^!���by\��8m��vo���7���e�GG}g�������7�4����,{�*7���>��J�TC��1�����?�u�����]P���A��[1I�\�L�B���$5�K#:�!c}�H[�=�K	z��e%�����kڏr)4�c�aL�;z�W�M��������gR��>�4Q*���LA�7#�U�4���h"1q~��H����
4Fx���R�}~j��j��f^�L�c�����Wh<�O�̈́��sլf*�q
℟&�xz��%�2t��Sg�2�����g�ͼ 7�	��y��T����]:75ÊeT��8�r[3�i����+(H��f�Z�%\jW�G;�E!������&��vXS��C\^vɾ������.Yn����)I.���t��.�F��d�R���)����d"*J�T�获��_\��^OȘAa��]ǵ�*�*Ǝ'���Ξ�s�S٘�rƟ���i�Uu�;	����b��W�]E�8�ґUQ1�<�h����}�XG��� ��Ĕ K����/!�Y�?%��ӹ�k���?��n��,��l\�!��f�B|����쪮����E��E>���b���!�E(��/��$�P��Â)��%��P��e�"t����(օ���#��]ʜ�9XA\�(`�.eA�>�W�H
�^8$C[���l�|�@c����s�_�R���c�x��9I9�?m��b          �   x��ұ
�0���)ܥ���]���89v�"�袋Oo
"V�
���%�ρ@*j�ю���S���t&���	
�l�N!(�GC��l%؈���}8]/��P�"i�ɾ���'�K�!����ߙ��S+�Cv�^��l��M�,�:BP��~�����u1���I�.H�!����y�      "   
  x��X���8]���n(�c���eUU�iW�1`�U�S�A�#̛ϑ��NH��#}�OB:׾>?���8�s)Eq��
5+E������,�V(���Q��4D��7�O�C4��e�����´�E[��?G^�����8�O\k��y�}d��V ��~g�h�]:͕��)��<Ⱥ"��w�P�Oń�g^��E����dt���w's��XsU�(�Bu>��)�u��8�<;��^�Z
 �	��ߛk)�
h-�5��ID<�}/�j�Zɋ�x� ��:�a|OJ��݂D�-����HZUP6 �S�d,-%뜳�g�<��� �V�F��滇�9���QC-��i��Nǡ���5��Kb�] g-��U�<�Y��(L�F>ۍ��HȋpW`_�&��M����#�e/`�~Z��>{w�)��C�4
��u�7�c;�J��r��,�c��(��;ņ;���*�X�T.�B۪:���l��^B����J�]��t-@�,�9����-�!�9�F���`0h��(@lV��+zj[��{���-'�'���yb�TF9BӁv�<�b<�L��v6usR�ޞ>B���d�憉����zu�}~b��b:~�� �<�=��Y�GJG�ٮ!�4���t���'|28w���,[�Ma��F�k+H6Ԩ��D}������lk�/s��T� �vZ�"�+Rɽ�<�-������^�r�m���}��Gȓ�w�ó�m�M��Ֆ�wh�[0\a�0{�e�3�l2�Y�$�0��O�vT�ד�@wC���>�lO�(�y4��,���C�οn��&�	��e��߻�>O
س�	����������K��cJ��=n:�� ��)���Lk����~�gns��\M���6���>����`��0��[
Z��E
e֐m����W��Z ���|��z�ц���0B�m�t��I��e8�w0E}P�G���p��}���E�.%+�t���GY�<��c���c�x%��3��Z,��Z;      %   R   x�3�LL����T1JR14P�75�r)˴��(q���M1�JM�
M���t���.w45)��+ˬ��3H7�0�67������ K�f     