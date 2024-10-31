# xhr.dev starter-kit: Human-Like Bot Browsing

Let your bot navigate websites like a human, seamlessly avoiding detection and bot challenges.

## Key Features

- **Forward MiTM Proxy**
  Effortlessly avoid bot detection with advanced bot avoidance mechanisms, captcha handling, and fingerprinting.
- **Automated Captcha Solving**
  Detects and resolves captcha challenges, allowing uninterrupted automation.

## Quick Demo

Integrate in one line:

```typescript
import axios from 'axios';
import HttpsProxyAgent from 'https-proxy-agent';

const axios = require('axios');
const { HttpsProxyAgent } = require('https-proxy-agent');

const { data } = await axios.request({
  headers: {
    'x-xhr-api-key': process.env.XHR_API_KEY,
  },
  httpsAgent: new HttpsProxyAgent('https://proxy.prod.engineering.xhr.dev'),
  url: 'https://app.gusto.com/login',
});
```
