# Maintainer: Artem Fedulaev <artem.fedulaev11@email.com>
pkgname=lwm-wm
pkgver=1.0
pkgrel=1
pkgdesc="Legacy X11 window manager"
arch=('x86_64')
url="https://github.com/brokenallmute/lvm"
license=('MIT')
depends=('libx11')
makedepends=('gcc' 'make') 
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/brokenallmute/lvm/archive/refs/tags/v${pkgver}.tar.gz")
sha256sums=('SKIP') # Пока ставим SKIP, сгенерируем ниже

build() {
    # GitHub при распаковке создает папку "ИмяРепо-Версия"
    # Твой репозиторий называется "lvm", значит папка будет "lvm-1.0"
    cd "lvm-${pkgver}"
    make
}

package() {
    cd "lvm-${pkgver}"
    make DESTDIR="$pkgdir" install
    
    install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
