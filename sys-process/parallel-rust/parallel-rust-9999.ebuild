EAPI=6
inherit cargo

DESCRIPTION="A command-line CPU load balancer written in Rust; inspired by GNU Parallel."
HOMEPAGE="https://github.com/mmstick/parallel/"
SRC_URI="https://github.com/mmstick/parallel/archive/master.tar.gz -> ${P}.tar.gz"
RESTRICT="mirror"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="native"
DEPEND="dev-lang/rust
        dev-util/cargo"

src_unpack() {
    unpack "${A}"
    mv parallel-master ${P}
}

src_compile() {
    use native && RUSTFLAGS="-C target-cpu=native"
    cargo build --release
}

src_install() {
    dobin target/release/parallel
    dodoc README.md
}
