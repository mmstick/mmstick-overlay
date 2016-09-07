EAPI=6
inherit cargo

DESCRIPTION="An efficient command-line permutator written in Rust that features syntax similar to Parallel."
HOMEPAGE="https://github.com/mmstick/permutate"
SRC_URI="https://github.com/mmstick/permutate/archive/${PV}.tar.gz"
RESTRICT="mirror"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
DEPEND="dev-lang/rust
        dev-util/cargo"