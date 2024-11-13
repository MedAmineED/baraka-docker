import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import path from "path";


// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  resolve: {
    alias: {
      "@": path.resolve(__dirname, "./src"),
    },
  },
  build: {
    assetsInlineLimit: 0,
    output: {
      manualChunks: {
        vendor: ['react', 'react-dom'], // Split large libraries
      },
    },
    manualChunks: {
      vendor: ['react', 'react-dom'], // Split large libraries
    },
    chunkSizeWarningLimit: 2000,
  },
  server: {
    fs: {
      allow: ['src', 'node_modules'],
    },
    headers: {
      'Content-Security-Policy': "script-src 'self';"
    },
    port: 3000
  },
  
})
