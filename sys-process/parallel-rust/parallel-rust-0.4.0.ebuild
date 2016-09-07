EAPI=6
inherit cargo

DESCRIPTION="A command-line CPU load balancer written in Rust; inspired by GNU Parallel."
HOMEPAGE="https://github.com/mmstick/parallel/"
SRC_URI="https://github.com/mmstick/parallel/archive/${PV}.tar.gz -> ${P}.tar.gz"
RESTRICT="mirror"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
DEPEND="dev-lang/rust
        dev-util/cargo"
