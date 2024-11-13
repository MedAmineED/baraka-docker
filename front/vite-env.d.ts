interface ImportMetaEnv {
    NODE_ENV: string;
    // Add other environment variables you expect here
  }
  
  interface ImportMeta {
    readonly env: ImportMetaEnv;
  }