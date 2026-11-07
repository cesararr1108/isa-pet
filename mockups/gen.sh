side(){ # $1 = active key
a(){ [ "$1" = "$ACT" ] && echo "on"; }
ACT=$1
cat <<EOF
<!doctype html><html lang="es"><head><meta charset="utf-8"><title>Isa Pet Admin</title><link rel="stylesheet" href="base.css"></head><body><div class="admin">
<aside class="side"><div class="logo"><span>🐾</span>Isa Pet <small style="font-size:11px;color:#94A3B8;font-weight:600;margin-left:4px">ADMIN</small></div>
<a class="$(a dash)">📊 Dashboard</a>
<div class="grp">Ventas</div>
<a class="$(a ped)">🧾 Pedidos y facturación <em>12</em></a>
<a class="$(a caja)">💵 Cajas / POS</a>
<a class="$(a dev)">↩️ Devoluciones <em>4</em></a>
<div class="grp">Compras e inventario</div>
<a class="$(a fac)">📥 Ingreso de facturas</a>
<a class="$(a mat)">📦 Productos y materiales</a>
<a>🏷️ Categorías</a><a>🚚 Proveedores</a>
<div class="grp">Sistema</div>
<a>👥 Clientes</a><a>📈 Reportes</a><a>⚙️ Configuración</a>
<div class="me"><div class="av">CA</div><div><b style="color:#fff">Cesar A.</b><br><span style="color:#94A3B8">Administrador</span></div></div>
</aside><main class="main">
EOF
}
foot(){ echo '</main></div></body></html>'; }
