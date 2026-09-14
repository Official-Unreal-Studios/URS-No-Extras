<p align="center">
  <img src="https://i.imgur.com/Han55yn.png" alt="Unreal Studios Banner" width="100%">
</p>

<h1 align="center">🚛 URS No Extras</h1>

<p align="center">
  <strong>Lightweight vehicle extra management for FiveM</strong>
</p>

<p align="center">
  Standalone • Configurable • Optimized • Open Source
</p>

---

## 📖 About

**URS No Extras** is a lightweight FiveM resource that automatically disables vehicle extras on configured vehicles.

It is designed for vehicles that should always spawn with a clean and consistent appearance. When a configured vehicle is detected, the resource checks its supported extras and disables any that are currently enabled.

No framework is required.

---

## ✨ Features

* Automatically disables enabled vehicle extras
* Supports multiple configured vehicle models
* Configurable extra ID range
* Configurable vehicle scan interval
* Cached vehicle model hashes for improved performance
* Lightweight client-side operation
* Simple and organized configuration
* No framework dependencies
* Compatible with QBCore, Qbox, ESX, and standalone servers
* Fully open source

---

## 🚗 Default Configuration

URS No Extras is configured by default for:

```lua
plathauler
```

Additional vehicles can be added at any time through `config.lua`.

---

## ⚙️ Configuration

The main configuration is located in:

```text
config.lua
```

Default configuration:

```lua
Config = {}

-- How often vehicles are checked, in milliseconds.
Config.CheckInterval = 1000

-- Vehicle spawn names whose extras should always be disabled.
Config.VehicleModels = {
    'plathauler'
}

-- Vehicle extra IDs to check.
Config.ExtraRange = {
    min = 0,
    max = 20
}
```

### Configuration Options

| Option           | Description                       | Default      |
| ---------------- | --------------------------------- | ------------ |
| `CheckInterval`  | How often vehicles are checked    | `1000ms`     |
| `VehicleModels`  | Vehicles affected by the resource | `plathauler` |
| `ExtraRange.min` | First vehicle extra ID checked    | `0`          |
| `ExtraRange.max` | Last vehicle extra ID checked     | `20`         |

---

## ➕ Adding Vehicles

Add additional vehicle spawn names to `Config.VehicleModels`:

```lua
Config.VehicleModels = {
    'plathauler',
    'vehicle2',
    'vehicle3'
}
```

There is no hardcoded vehicle limit.

---

## 📦 Installation

### 1. Download

Download the latest release of **URS No Extras**.

### 2. Extract

Place the resource inside your FiveM server's `resources` directory.

Example:

```text
resources/[unreal]/urs-noextras
```

### 3. Add to `server.cfg`

Add:

```cfg
ensure urs-noextras
```

### 4. Restart

Restart the resource:

```text
restart urs-noextras
```

Or restart your FiveM server.

---

## 🔧 How It Works

When a supported vehicle is detected, URS No Extras:

1. Identifies the vehicle model
2. Checks whether the model exists in `Config.VehicleModels`
3. Scans the configured vehicle extra range
4. Detects available extras
5. Disables any enabled extras

Unsupported vehicles are ignored.

Vehicle model hashes are cached when the resource starts to avoid unnecessary repeated hash calculations.

---

## ✅ Compatibility

URS No Extras works with:

* FiveM
* Standalone servers
* Qbox
* QBCore
* ESX
* Custom frameworks

No framework-specific dependencies are required.

---

## 📁 Resource Structure

```text
urs-noextras/
├── client.lua
├── config.lua
└── fxmanifest.lua
```

### Files

| File             | Purpose                                        |
| ---------------- | ---------------------------------------------- |
| `client.lua`     | Handles vehicle detection and extra management |
| `config.lua`     | Contains configurable resource settings        |
| `fxmanifest.lua` | FiveM resource manifest and metadata           |

---

## 📝 Version 1.1.0

### Improvements

* Reorganized and cleaned the resource
* Added dedicated `config.lua`
* Removed duplicated vehicle-checking logic
* Combined processing into a single optimized loop
* Added support for multiple configured vehicles
* Added configurable vehicle scan intervals
* Added configurable vehicle extra ranges
* Added cached vehicle hashes
* Updated resource metadata
* Updated version information

---

## ⚡ Performance

URS No Extras is designed to remain lightweight.

Only configured vehicle models are processed, and vehicle hashes are cached during initialization.

The scan frequency can also be adjusted using:

```lua
Config.CheckInterval
```

For most servers, the default value of `1000` milliseconds should provide a good balance between responsiveness and performance.

---

## 🤝 Contributing

Issues, fixes, and improvements are welcome.

When submitting changes, keep the resource:

* Lightweight
* Framework-independent
* Easy to configure
* Easy to maintain

---

## 🟣 Unreal Studios

Developed and maintained by **Unreal Studios**.

<p align="center">
  <strong>Lightweight. Configurable. Unreal.</strong>
</p>
