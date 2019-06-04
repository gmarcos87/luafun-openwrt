#
## Copyright (C) 2019 Gui Iribarren <gui@altermundi.net>
#
## This is free software, licensed under the GNU General Public License v3.
#

include $(TOPDIR)/rules.mk

GIT_COMMIT_DATE:=$(shell git log -n 1 --pretty=%ad --date=short . )
GIT_COMMIT_TSTAMP:=$(shell git log -n 1 --pretty=%at . )

PKG_NAME:=luafun
PKG_VERSION=$(GIT_COMMIT_DATE)-$(GIT_COMMIT_TSTAMP)

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/luafun/luafun
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_VERSION:=e248e007be4d3474224277f6ba50f53d4121bfe0
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION).tar.gz

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=lib
	CATEGORY:=Libraries
	TITLE:=$(PKG_NAME)
	MAINTAINER:=Marcos Gutierrez <gmarcos@altermundi.net>
	PKGARCH:=all
endef

define Package/$(PKG_NAME)/description
	High-performance functional programming library for Lua
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/
	$(CP) $(PKG_BUILD_DIR)/fun.lua $(1)/usr/lib/lua/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
