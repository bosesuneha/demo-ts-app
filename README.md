# Demo TypeScript App

A simple TypeScript application built with Express.js that displays a welcome message.

## Prerequisites

- Node.js (v16 or higher)
- npm

## Installation

```bash
npm install
```

## Running the Application

### Development mode
```bash
npm run dev
```

### Production mode
```bash
npm run build
npm start
```

The application will be available at `http://localhost:3000`

## API Endpoints

- `GET /` - Displays the HTML UI
- `GET /api/info` - Returns application information (JSON)
- `GET /health` - Health check endpoint (JSON)
