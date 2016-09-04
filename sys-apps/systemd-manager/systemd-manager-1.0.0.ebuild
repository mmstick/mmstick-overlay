# Auto-Generated by cargo-ebuild 0.1.0

EAPI=6

CRATES="
systemd-manager-1.0.0
num-traits-0.1.32
gdk-pixbuf-0.1.0
pango-0.1.0
libc-0.2.13
gio-0.1.0
gdk-pixbuf-sys-0.3.1
gtk-sys-0.3.1
cairo-sys-rs-0.3.1
pkg-config-0.3.8
glib-sys-0.3.1
gdk-0.5.0
gobject-sys-0.3.1
unreachable-0.1.1
gdk-sys-0.3.1
atk-sys-0.3.1
glib-0.1.0
void-1.0.2
c_vec-1.0.12
pango-sys-0.3.1
quickersort-2.0.1
gtk-0.1.0
bitflags-0.4.0
gio-sys-0.3.1
dbus-0.3.4
cairo-rs-0.1.0
bitflags-0.5.0
"

inherit cargo

DESCRIPTION="A GTK3 GUI for managing systemd services on Linux"
HOMEPAGE="https://github.com/mmstick/systemd-manager"
SRC_URI="$(cargo_crate_uris ${CRATES})
    https://github.com/mmstick/systemd-manager/archive/${PV}.tar.gz"
RESTRICT="mirror"
LICENSE=""
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="sys-apps/systemd
    x11-libs/gtk+"
DEPEND="${RDEPEND}
    dev-util/cargo
    dev-lang/rust"

src_install() {
	emake DESTDIR="${D}/usr" install
}

