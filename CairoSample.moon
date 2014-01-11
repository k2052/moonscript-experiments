lgi   = require 'lgi'
cario = lgi.cairo
Gtk   = lgi.Gtk

class CairoSample
  @size: 30

  new: () =>
    @window = Gtk.Window(title: 'cats', on_destroy: Gtk.main_quit)
    @window\set_default_size(450, 550)
    @create_widgets()

  create_widgets: =>
    drawing_area = Gtk.DrawingArea{
      on_draw: (drawing, cr) ->
        @on_draw(drawing, cr)
    }
    @window\add(drawing_area)

  show_all: =>
    @window\show_all()

  on_draw: (drawing, cr) =>
    cr\move_to(128, 25.6)
    cr\line_to(230.4, 230.4)
    cr\rel_line_to(-102.4, 0)
    cr\curve_to(51.2, 230.4, 51.2, 128, 128, 128)
    cr\close_path()

    cr\move_to(64, 25.6)
    cr\rel_line_to(51.2, 51.2)
    cr\rel_line_to(-51.2, 51.2)
    cr\rel_line_to(-51.2, -51.2)
    cr\close_path()

    cr.line_width = 10
    cr\set_source_rgb(0, 0, 1)
    cr\fill_preserve()
    cr\set_source_rgb(0, 0, 0)
    cr\stroke()

cairo_sample = CairoSample()
cairo_sample\show_all()
Gtk.main()
