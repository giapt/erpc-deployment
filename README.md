<p align="center">
  <img src="https://i.imgur.com/sa4MhlS.png" alt="eRPC Hero" />
</p>

[![Build Status](https://img.shields.io/github/actions/workflow/status/erpc/erpc/release.yml?branch=main&style=flat&colorA=000000&colorB=000000)](https://github.com/erpc/erpc/actions/workflows/release.yml)
[![Docs](https://img.shields.io/badge/docs-get%20started-brightgreen?style=flat&colorA=000000&colorB=000000)](https://docs.erpc.cloud/)
[![License](https://img.shields.io/github/license/erpc/erpc?style=flat&colorA=000000&colorB=000000)](https://github.com/erpc/erpc/blob/main/LICENSE)
[![Contributors](https://img.shields.io/github/contributors/erpc/erpc?style=flat&colorA=000000&colorB=000000)](https://github.com/erpc/erpc/graphs/contributors)
[![Telegram](https://img.shields.io/endpoint?logo=telegram&url=https%3A%2F%2Fmogyo.ro%2Fquart-apis%2Ftgmembercount%3Fchat_id%3Derpc_cloud&style=flat&colorA=000000&colorB=000000)](https://t.me/erpc_cloud)


[eRPC](https://erpc.cloud/) is a fault-tolerant EVM RPC proxy and **re-org aware permanent caching solution**. It is built with read-heavy use-cases in mind, such as data indexing and high-load frontend usage.

<img src="https://github.com/erpc/erpc/raw/main/assets/hla-diagram.svg" alt="Architecture Diagram" width="70%" />

### Getting Started

1. Clone this repository:

```bash
git clone https://github.com/erpc/erpc.git
```

2. Create a `.env` configuration file based on the [`.env.template`](./.env.template) file, and fill `.env` with api key from Alchemy, DRPC, Blast, Infura, Thirdweb free accounts.

```bash
cp .env.template .env
vi .env
```

3. Create a `erpc.yaml` configuration file

```bash
./fill_env.sh
```

4. Run the eRPC server by docker compose:

```bash
docker compose up -d
```

5. Test the setup:

Send your first request:

```bash
curl --location 'http://localhost:4020/main/evm/42161' \
--header 'Content-Type: application/json' \
--data '{
    "method": "eth_getBlockByNumber",
    "params": [
        "0x1203319",
        false
    ],
    "id": 9199,
    "jsonrpc": "2.0"
}'
```

6. Access Grafana Monitoring

Open Grafana at http://localhost:3020 and login with the following credentials:

```bash
username: admin
password: admin
```