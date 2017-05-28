include $(TOPDIR)/rules.mk

GIT_COMMIT_DATE:=$(shell git log -n 1 --pretty=%ad --date=short . )
GIT_COMMIT_TSTAMP:=$(shell git log -n 1 --pretty=%at . )

PKG_NAME:=lime-docs-minimal
PKG_VERSION=$(GIT_COMMIT_DATE)-$(GIT_COMMIT_TSTAMP)

PKG_SOURCE_URL:=https://github.com/libremesh/lime-web/trunk/docs
PKG_SOURCE_PROTO:=svn
PKG_SOURCE_VERSION:=HEAD
PKG_SOURCE_SUBDIR:=lime-docs-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/lime-docs
  TITLE:=LibreMesh documentation
  SECTION:=lime
  CATEGORY:=LiMe
  DEPENDS:=+$(PKG_NAME)
  MAINTAINER:=Ilario Gelmetti <ilario@tgnu.ml>
  URL:=http://libremesh.org/docs/
endef

define Package/$(PKG_NAME)
  TITLE:=LibreMesh minimal documentation
  SECTION:=lime
  CATEGORY:=LiMe
  MAINTAINER:=Ilario Gelmetti <ilario@tgnu.ml>
  URL:=http://libremesh.org/docs/
endef

define Package/lime-docs/description
	Offline documentation for LibreMesh firmware
endef

define Package/$(PKG_NAME)/description
	Minimal offline documentation for LibreMesh firmware containing
	just an expaination of the main config file.
endef

define Build/Compile
endef

define Package/lime-docs/install
	$(INSTALL_DIR) $(1)/docs/ || true
	$(INSTALL_BIN) $(BUILD_DIR)/*.txt $(1)/docs/
	@cp -r $(BUILD_DIR)/hardware/ $(1)/docs/	
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/docs/ || true
	$(INSTALL_BIN) $(BUILD_DIR)/config.txt $(1)/docs/
endef

$(eval $(call BuildPackage,lime-docs))
$(eval $(call BuildPackage,$(PKG_NAME)))




