#!/bin/bash

# YardChatz Website Monitor
# Run this script daily to check if your website is working

echo "🔍 Checking YardChatz website health..."
echo "=================================="

# Check if website is responding
if curl -s -o /dev/null -w "%{http_code}" https://yardchatz.com | grep -q "200"; then
    echo "✅ Website is responding (HTTP 200)"
else
    echo "❌ Website is not responding"
    echo "   Check: https://yardchatz.com"
fi

# Check DNS resolution
echo ""
echo "🌐 DNS Check:"
nslookup yardchatz.com | grep "Address:" | head -4

# Check GitHub Pages status
echo ""
echo "📦 GitHub Pages Check:"
if curl -s -o /dev/null -w "%{http_code}" https://RickleYard.github.io/YardChatz-website | grep -q "200"; then
    echo "✅ GitHub Pages is working"
else
    echo "❌ GitHub Pages is not working"
fi

# Check if logo is loading
echo ""
echo "🖼️ Logo Check:"
if curl -s -o /dev/null -w "%{http_code}" https://yardchatz.com/logo.png | grep -q "200"; then
    echo "✅ Logo is loading"
else
    echo "❌ Logo is not loading"
fi

echo ""
echo "=================================="
echo "📊 Check completed at: $(date)"
echo ""
echo "🔗 Quick links:"
echo "   Website: https://yardchatz.com"
echo "   GitHub: https://github.com/RickleYard/YardChatz-website"
echo "   Health Check: https://yardchatz.com/health-check.html"
