# ==========================================
# OrangeFox 构建配置 - BOE TC625 (高通 bengal)
# ==========================================

# ---------- 1. 维护者信息 ----------
OF_MAINTAINER := Lime
OF_MAINTAINER_PATCH_VERSION := 1

# ---------- 2. 屏幕与 UI ----------
# 已从 dtbo_a 确认：默认面板 Novatek nt36xxxp 2K，分辨率 1200x2000
OF_SCREEN_H := 2000
# 10寸平板无刘海，常规状态栏高度
OF_STATUS_H := 80
OF_STATUS_INDENT_LEFT := 0
OF_STATUS_INDENT_RIGHT := 0
# 无刘海，时钟居中(2)
OF_CLOCK_POS := 2
OF_ALLOW_DISABLE_NAVBAR := 0

# ---------- 3. A/B 分区声明（A/B + recovery-as-boot）----------
OF_AB_DEVICE_WITH_RECOVERY_AS_BOOT := 1
OF_VIRTUAL_AB_DEVICE := 1

# ---------- 4. 核心功能 ----------
OF_USE_MAGISKBOOT := 1
OF_USE_MAGISKBOOT_FOR_ALL_PATCHES := 0
OF_NO_RELOAD_MAGISKBOOT := 1
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1

# ---------- 5. 解密与防砖 ----------
# 高通平台先保持等待解密，确认 Data 能正常挂载后再考虑改 1
OF_SKIP_METADATA_DECRYPTION_WAIT := 0
# Recovery 不碰加密设备的 boot，Root 由手动刷 magisk_patched 镜像完成
OF_DONT_PATCH_ENCRYPTED_DEVICE := 1
OF_KEEP_DM_VERITY := 1

# ---------- 6. 杂项 ----------
OF_ENABLE_LPTOOLS := 1
# 备份列表含 dtbo（独立镜像，搞 AVB 时经常要一起恢复）
OF_QUICK_BACKUP_LIST := /boot;/dtbo;/data;
