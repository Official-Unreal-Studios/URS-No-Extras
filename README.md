
<p align="center">
  <img src="https://i.imgur.com/Han55yn.png" alt="GitHub Profile Header Generator Banner" width="100%">
</p>

# 🚛 URS No Extras v1.1.0

A lightweight, standalone FiveM resource that automatically disables vehicle extras on configured vehicles.

URS No Extras is designed for vehicles that should always spawn with a clean, consistent appearance. Once a supported vehicle is detected, the script checks its available extras and disables any that are currently enabled.

## ✨ Features

* Automatically disables vehicle extras
* Supports multiple vehicle models
* Configurable extra ID range
* Configurable vehicle-check interval
* No framework required
* Lightweight client-side operation
* Clean and organized configuration
* Cached vehicle model hashes for improved performance
* Fully open source

## 🚗 Default Vehicle

This release is configured for:

```lua
plathauler
```

Additional vehicles can easily be added inside `config.lua`.

## ⚙️ Configuration

```lua
Config = {}

-- How often nearby vehicles are checked, in milliseconds.
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

### Adding More Vehicles

Add each vehicle spawn name to `Config.VehicleModels`:

```lua
Config.VehicleModels = {
    'plathauler',
    'vehicle2',
    'vehicle3'
}
```

## 📦 Installation

1. Download `URS-Noextras-Cleaned.zip`.
2. Extract the resource into your server’s `resources` folder.
3. Rename the folder to something simple, such as:

```text
urs-noextras
```

4. Add the following line to your `server.cfg`:

```cfg
ensure urs-noextras
```

5. Restart your server.

## ✅ Compatibility

* FiveM
* Standalone
* QBCore
* ESX

No framework-specific dependencies are required.

## 📝 v1.1.0 Changes

* Reorganized and cleaned the resource
* Added a dedicated `config.lua`
* Removed duplicated vehicle-checking logic
* Combined processing into one optimized loop
* Added support for multiple configured vehicles
* Added configurable scan intervals
* Added configurable vehicle-extra ranges
* Cached vehicle hashes for better performance
* Updated resource metadata and version information

## 📁 Included Files

```text
urs-noextras/
├── client.lua
├── config.lua
└── fxmanifest.lua
```

## 🟣 Unreal Studios

Developed and maintained by **Unreal Studios**.

Lightweight. Configurable. Unreal.
