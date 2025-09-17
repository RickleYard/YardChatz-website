# YardChatz Website Backup Strategy

## Current Setup
- **Domain:** yardchatz.com
- **Hosting:** GitHub Pages
- **Repository:** https://github.com/RickleYard/YardChatz-website
- **DNS:** Pointing to GitHub Pages IPs

## Backup Plan

### 1. Multiple Hosting Options
Keep the website files in multiple places:
- ✅ GitHub Pages (primary)
- 🔄 Google Drive (backup)
- 🔄 Local backup (your computer)

### 2. Domain Monitoring
- Set up domain expiration alerts
- Monitor DNS changes
- Check website uptime regularly

### 3. Repository Protection
- Enable branch protection on main branch
- Keep repository public (required for free GitHub Pages)
- Regular commits to preserve history

### 4. Alternative Hosting Ready
If GitHub Pages fails, we can quickly switch to:
- Netlify (free tier)
- Vercel (free tier)
- Your existing hosting provider

## Quick Recovery Steps

### If Website Goes Down:
1. Check DNS: `nslookup yardchatz.com`
2. Check GitHub Pages status
3. Verify repository is still there
4. Check domain expiration
5. Switch to backup hosting if needed

### Emergency Contacts:
- GitHub Support: https://support.github.com
- Domain registrar: Check your Google Domains account
- Alternative hosting: Netlify/Vercel

## Files to Always Keep:
- index.html
- privacy.html
- terms.html
- logo.png
- README.md
