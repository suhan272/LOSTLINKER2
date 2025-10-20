# LostLinker

A full-stack web application for reporting and finding lost items within college campuses.

## 🌟 Features

- **User Authentication**: Sign up and login with college email verification
- **Lost/Found Items**: Post and browse lost or found items
- **Search Functionality**: Find items by name, category, or location
- **Real-time Messaging**: Communicate with other users about items
- **College-specific Filtering**: See only items from your college
- **Image Uploads**: Add photos to item posts
- **Password Reset**: Secure password recovery system

## 🏗️ Tech Stack

- **Frontend**: HTML, CSS, JavaScript
- **Backend**: Node.js, Express.js
- **Database**: MongoDB (via Mongoose)
- **Authentication**: JWT (JSON Web Tokens)
- **Image Handling**: Base64 encoding (development) / Cloud Storage (production)

## 🚀 Getting Started

### Prerequisites

- Node.js (v14 or higher)
- MongoDB (local or Atlas)
- Git

### Local Development

1. **Clone the repository**:
   ```bash
   git clone <your-repo-url>
   cd lostlinker
   ```

2. **Install backend dependencies**:
   ```bash
   cd backend
   npm install
   ```

3. **Start MongoDB** (if using local):
   ```bash
   mongod --dbpath /data/db
   ```

4. **Start the backend server**:
   ```bash
   npm start
   ```
   or
   ```bash
   node server.js
   ```

5. **Open the frontend**:
   Open `frontend/lost.html` in your browser

### Environment Variables

Create a `.env` file in the `backend/` directory:

```env
MONGO_URI=your_mongodb_connection_string
JWT_SECRET=your_jwt_secret_key
PORT=3000
```

## 🌐 Deployment

### Frontend
- **Vercel/Netlify**: Connect your GitHub repo and set root directory to `frontend/`

### Backend
- **Render/Railway**: Connect your GitHub repo and set root directory to `backend/`
- Add environment variables in the deployment dashboard

### Database
- **MongoDB Atlas**: Create a free cluster and add the connection string as `MONGO_URI`

## 📁 Project Structure

```
lostlinker/
├── backend/
│   ├── models/
│   │   ├── MessageModel.js
│   │   ├── PostModel.js
│   │   └── UserModel.js
│   ├── server.js
│   ├── package.json
│   └── ...
├── frontend/
│   └── lost.html
├── README.md
└── ...
```

## 🔐 Security Notes

- Change the default `JWT_SECRET` to a strong, random secret in production
- Use MongoDB Atlas instead of local MongoDB for production
- Implement proper rate limiting
- Add input validation and sanitization
- Use HTTPS in production

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 Support

For support, email support@lostlinker.com or open an issue in the repository.