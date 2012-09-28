# 
# Author: Zhifeng Gu <guzhifeng1979@hotmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=ez-ipupdate-3322
PKG_VERSION:=3.0.10
PKG_RELEASE:=3

PKG_SOURCE:=ez-ipupdate-$(PKG_VERSION).tgz
PKG_SOURCE_URL:=http://www.3322.net/download
PKG_MD5SUM:=d277ae99ee34eed3956207d9a6dabbb7
PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

define Package/ez-ipupdate-3322
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=IP Addresses and Names
  TITLE:=Dynamic DNS services client of 3322
  URL:=http://www.3322.net
  MAINTAINER:=Zhifeng Gu <guzhifeng1979@hotmail.com>
endef

define Package/ez-ipupdate-3322/description
  ez-ipupdate is a quite complete client for the dynamic DNS service
  offered by http://www.ez-ip.net/ and many more. This is a customized 
  version from http://www.3322.org.
endef

define Build/Prepare
	gzip -dc $(DL_DIR)/$(PKG_SOURCE) | tar -C $(PKG_BUILD_DIR) -x --strip-components=1
	$(call Build/Patch)
endef

define Package/ez-ipupdate-3322/conffiles
/etc/config/ddns
endef

define Package/ez-ipupdate-3322/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/ez-ipupdate $(1)/usr/sbin/
	$(INSTALL_DIR) $(1)/etc/config/
	$(INSTALL_DATA) ./files/ez-ipupdate.config $(1)/etc/config/ddns
	$(INSTALL_DIR) $(1)/etc/hotplug.d/iface
	$(INSTALL_DATA) ./files/ez-ipupdate.hotplug $(1)/etc/hotplug.d/iface/30-ez-ipupdate
endef

$(eval $(call BuildPackage,ez-ipupdate-3322))
