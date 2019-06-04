#
## Copyright (C) 2019 Gui Iribarren <gui@altermundi.net>
#
## This is free software, licensed under the GNU General Public License v3.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luafun
PKG_VERSION:=0.14
PKG_RELEASE:=1
PKG_MAINTAINER:=Marcos Gutierrez <gmarcos@altermundi.net>
PKG_LICENSE:=MIT

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/luafun/luafun.git
PKG_SOURCE_VERSION:=e248e007be4d3474224277f6ba50f53d4121bfe0

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SUBMENU:=Lua
	SECTION:=lang
	CATEGORY:=Languages
	TITLE:=Luafun library for Lua
	DEPENDS:=+lua
	MAINTAINER:=Marcos Gutierrez <gmarcos@altermundi.net>
	PKGARCH:=all
endef

define Package/$(PKG_NAME)/description
	High-performance functional programming library for Lua
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/lua
	$(CP) $(PKG_BUILD_DIR)/fun.lua $(1)/usr/lib/lua
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
