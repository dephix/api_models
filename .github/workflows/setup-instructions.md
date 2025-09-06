# PyPI Auto-deploy Setup Instructions

## 1. Create API Token on PyPI

1. Go to [PyPI](https://pypi.org)
2. Log in to your account
3. Navigate to Account Settings → API tokens
4. Create a new token with scope "Entire account" or "Specific project"
5. Copy the token

## 2. Add Secret to GitHub

1. Go to your repository on GitHub
2. Settings → Secrets and variables → Actions
3. Click "New repository secret"
4. Name: `PYPI_API_TOKEN`
5. Secret: paste the token from PyPI
6. Click "Add secret"

## 3. Create Tag for Release

```bash
# Update version in setup.py and pyproject.toml
# Then create a tag:
git tag v1.0.0
git push origin v1.0.0
```

## 4. Verification

After creating a tag:
1. Go to Actions in your repository
2. Make sure the "Publish to PyPI" workflow started
3. Check that the package appeared on PyPI

## Security

- Never commit API tokens to code
- Use only GitHub Secrets for storing tokens
- Limit token permissions to necessary projects only
