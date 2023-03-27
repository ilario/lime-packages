# This is free software, licensed under the GNU General Public License v2.
# See /LICENSES for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=random-numgen
PKG_VERSION:=0.1
PKG_RELEASE:=1
PKG_LICENSE:=GPL-2.0

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=Generates a random number 0-65535
	MAINTAINER:=Ilario Gelmetti <ilario@sindominio.net>
	PKGARCH:=all
endef

define Package/$(PKG_NAME)/description
	Offers an alternative to the RANDOM shell variable,
	generating a pseudo-random integer number from 0 to
	65535 using /dev/urandom as a random data source.
endef

define Build/Compile
endef

define Build/Configure
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
