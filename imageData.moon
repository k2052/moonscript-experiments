inspect = require 'inspect'
lgi   = require 'lgi'
cairo = lgi.cairo
Gtk       = lgi.Gtk
Gdk       = lgi.Gdk
GdkPixbuf = lgi.GdkPixbuf
bytes = require 'bytes'

pixbuf = GdkPixbuf.Pixbuf.new_from_file('test.png')
-- pixbuf = GdkPixbuf.Pixbuf.new_from_file('test.png')
-- 
-- print(inspect(pixbuf\get_pixels()))
-- 
surface = cairo.ImageSurface.create_for_data(pixbuf\get_pixels(), cairo.Format.ARGB24, pixbuf\get_width(), pixbuf\get_height(), pixbuf\get_rowstride())
--

data = surface.data
print(tostring(data))

-- new_pixbuf = GdkPixbuf.Pixbuf.new_from_data(surface\get_data())
-- print(inspect(new_pixbuf\get_pixels()))

-- surface = cairo.ImageSurface.create_from_png('test.png')
-- w, h = surface\get_width(), surface\get_height()
-- 
-- pixmap = Gdk.Pixmap(nil, w, h, 24)
-- 
-- cr = pixmap\cairo_create()
-- 
-- cr\set_source_surface(surface, 0, 0)
-- 
-- cr\paint()
-- 
-- pixbuf = GGdkPixbuf.Pixbuf.new('RGB', true, 8, w, h)
-- pixbuf = pixbuf\get_from_drawable(pixmap, Gdk.colormap_get_system(), 0, 0, 0, 0, w, h)
