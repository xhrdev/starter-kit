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
import { readFileSync } from 'node:fs';
import { HttpsProxyAgent } from 'https-proxy-agent';

const ca = readFileSync('./xhrdev.pem');
const httpsAgent = new HttpsProxyAgent('https://magic.xhr.dev');
httpsAgent.options.ca = ca;

const { data } = await axios.request({
  headers: {
    'x-xhr-api-key': process.env.XHR_API_KEY,
  },
  httpsAgent,
  url: 'https://app.gusto.com/login',
});
```

`xhrdev.pem` is committed in this repo for certificate verification.
You can also download the latest certificate directly:

```bash
curl -s https://docs.xhr.dev/xhrdev.pem -o xhrdev.pem
```

## Examples

See our samples at our [GitHub repository](https://github.com/xhrdev/examples)

For example, using the Apollo hidden API: <https://github.com/xhrdev/examples/blob/master/src/apollo.ts>
