# Isa Pet – Bitácora de diseño

> Documento para retomar el trabajo. **Fase actual: DISEÑO (todavía no se escribe código de la app).**
> Última actualización: 08 nov 2026

## 1. Qué estamos construyendo

Tienda de mascotas con **dos paneles**:

1. **Tienda (cliente):** catálogo, carrito y compra online.
2. **Panel administrativo:** ingreso de facturas de proveedores, facturación de pedidos, creación de productos/materiales, devoluciones y cajas (POS).

## 2. Lo que ya está hecho

Maquetas en `mockups/` (HTML abrible en navegador + imágenes PNG en `mockups/img/`):

| # | Pantalla | Panel | Puntos clave |
|---|----------|-------|--------------|
| 01 | Inicio | Tienda | Buscador, categorías tipo píldora, banner promo, "compra por mascota", tarjetas de producto con descuento/reseñas/botón + |
| 02 | Carrito | Tienda | Pasos de checkout (Carrito → Envío → Pago → Confirmación), cantidades, alertas de stock, suscripción −10%, barra de envío gratis, cupón, Express vs. Retiro, IVA 15%, productos sugeridos |
| 03 | Dashboard | Admin | KPIs (ventas, pedidos, ticket promedio, devoluciones), gráfico ingresos vs. compras, ventas por canal, últimos pedidos, stock bajo → orden de compra |
| 04 | Ingreso de facturas | Admin | Lectura automática de XML/PDF/foto, líneas con costo/desc./IVA, margen sugerido, alerta de subida de costo, crear producto nuevo desde la factura, retención, contado/crédito |
| 05 | Facturación de pedidos | Admin | Pestañas Por facturar/Facturados/Anulados, facturación en lote, vista previa de factura electrónica SRI, historial del pedido, envío por email/WhatsApp |
| 06 | Productos y materiales | Admin | Tipos: producto de venta / material-insumo / kit-combo / servicio (peluquería); variantes con costo-PVP-margen-stock; stock mínimo, ubicación, visibilidad tienda/POS |
| 07 | Devoluciones | Admin | KPIs, lista de casos, fotos del cliente, condición por producto (reingresar / merma), resolución reembolso/cambio/saldo a favor, nota de crédito |
| 08 | Cajas / POS | Admin | Varias cajas, movimientos (apertura/venta/egreso/devolución), totales por forma de pago, conteo de billetes/monedas, diferencia, cierre con reporte Z |

## 3. Decisiones de diseño tomadas

- **Marca:** Isa Pet (logo 🐾). Contexto Ecuador: dólares, IVA 15%, factura electrónica SRI, RUC/CI, ciudad Guayaquil.
- **Tienda:** estilo cálido y amigable — naranja `#FF6B3D`, crema `#FFF8F1`, texto `#1F1A17`, verde para "en stock".
- **Admin:** estilo de trabajo — menú lateral oscuro `#121826`, acento violeta `#6C5CE7`, fondo `#F4F6FB`.
- **Estados por color:** verde = ok, amarillo = pendiente, azul = en proceso, rojo = problema, violeta = acción del sistema.
- **Canales de venta:** tienda online, caja/POS, WhatsApp.
- Esquinas redondeadas grandes, tarjetas blancas con borde suave, tipografía sans (Inter).
- Las imágenes de producto son emojis provisionales; en la versión final serán fotos reales.

## 4. Pendientes de diseño (próximos pasos)

Pantallas propuestas que faltan:

- [ ] Ficha de producto (fotos, variantes, reseñas, compra sugerida)
- [ ] Checkout: envío y pago
- [ ] Confirmación de pedido / seguimiento
- [ ] Versión móvil de la tienda (inicio + carrito)
- [ ] Mi cuenta del cliente (pedidos, mascotas registradas, suscripciones)
- [ ] Admin: clientes
- [ ] Admin: reportes
- [ ] Admin: proveedores y órdenes de compra
- [ ] Admin: pantalla de venta rápida en caja (POS táctil)
- [ ] Admin: configuración (datos SRI, impuestos, usuarios y roles)

Preguntas abiertas para decidir:

- ¿Logo/colores definitivos o seguimos con los actuales?
- ¿Cuántas sucursales/bodegas y cuántas cajas?
- ¿Roles de usuario (admin, cajero, bodeguero)?
- ¿Proveedor de facturación electrónica y pasarela de pago?
- ¿Peluquería/veterinaria con agenda de citas?

## 5. Cuando pasemos a código (no iniciado)

Propuesta tentativa, **a confirmar**: Next.js + TypeScript, base de datos con Prisma (SQLite para desarrollo, PostgreSQL en producción), reutilizando los estilos de `mockups/base.css`.

## 6. Cómo retomar

1. Abrir esta conversación de nuevo en Claude Code (o una nueva en el repo `isa-pet`, rama `claude/kind-lamport-qkhtya`).
2. Pedir: *"Lee DISENO.md y sigamos diseñando"*.
3. Las maquetas se regeneran como imágenes abriendo los `.html` de `mockups/`.
