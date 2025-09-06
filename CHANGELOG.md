# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Initial release with Pydantic models for trading APIs
- Abstract interfaces for HTTP and WebSocket clients
- Support for funding rates, kline data, and order management

## [0.1.0] - 2025-09-06

### Added
- `FundingRate` model for funding rate data
- `LotSizeFilter` model for order size validation
- `InstrumentsInfo` model for trading instrument details
- `KlineCandle` model for OHLCV data
- `ShortKlineData` model for compact kline representation
- `PlaceOrderResult` model for order placement responses
- `MarketHttpClient` abstract interface for REST APIs
- `MarketWsClient` abstract interface for WebSocket connections
- Full type hints and Pydantic validation
- Python 3.13+ support
