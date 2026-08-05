# Licence

tanmai is licensed under the GNU General Public License version 3.
See <https://www.gnu.org/licenses/gpl-3.0.html>.

## Third-party components

This package bundles or downloads work by other people, under their own terms:

| Component | Licence |
| --- | --- |
| [chess.js](https://github.com/jhlywa/chess.js) (`inst/js/`) | MIT |
| cburnett piece SVGs (`inst/svg/`, via python-chess) | GPL-3.0 |
| [Stockfish](https://stockfishchess.org) (optional, found at runtime) | GPL-3.0 |

The bundled cburnett artwork is GPL-3.0 and is not incidental - it is the
default template set and what the test suite renders against - which is why
this package is GPL-3 rather than permissively licensed.

Stockfish is run as a separate process over UCI rather than linked into this
program. Piece art for other sets is fetched at runtime for personal use and is
not redistributed here; `piece_set_manifest()` records each set's licence.
