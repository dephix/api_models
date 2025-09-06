# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- GitHub Actions workflow for automatic PyPI publishing
- Personal Access Token support for GitHub Release creation

## [0.1.3] - 2025-09-06
- Fixed GitHub Release content with CHANGELOG.md

## [0.1.2] - 2025-09-06

### Fixed
- Fixed GitHub Release creation with proper PAT authentication
- Updated workflow to use softprops/action-gh-release@v1

## [0.1.1] - 2025-09-06

### Fixed
- Fixed version conflict on PyPI (bumped from 0.1.0 to 0.1.1)
- Updated GitHub Release action to modern version

## [0.1.0] - 2025-09-06

### Added
- Initial release with Pydantic models for trading APIs
- Abstract interfaces for HTTP and WebSocket clients
- Support for funding rates, kline data, and order management
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
