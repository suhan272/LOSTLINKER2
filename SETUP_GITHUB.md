# GitHub Repository Setup

## Step 1: Create GitHub Repository

1. Go to [https://github.com/new](https://github.com/new)
2. Fill in the form:
   - Repository name: `lostlinker`
   - Description: `Lost & Found web application for college campuses`
   - Public (recommended)
   - **Do NOT initialize with README**
3. Click "Create repository"

## Step 2: Update Remote URL

After creating your repository, run this command in your project directory, replacing `YOUR_USERNAME` with your actual GitHub username:

```bash
git remote set-url origin https://github.com/YOUR_USERNAME/lostlinker.git
```

## Step 3: Push to GitHub

```bash
git push -u origin main
```

## Alternative: Create New Repository

If you prefer to create a new repository from scratch:

1. Remove the current remote:
   ```bash
   git remote remove origin
   ```

2. Create a new repository on GitHub without initializing

3. Follow GitHub's instructions for pushing an existing repository:

   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/your-repo-name.git
   git branch -M main
   git push -u origin main
   ```

## Verification

After pushing, verify that your code is on GitHub:

```bash
git status
```

You should see "Your branch is up to date with 'origin/main'".

## Next Steps

Once your code is on GitHub:

1. Deploy frontend to Vercel/Netlify
2. Deploy backend to Render/Railway
3. Set up MongoDB Atlas
4. Configure environment variables
5. Update frontend API URL
6. Redeploy frontend