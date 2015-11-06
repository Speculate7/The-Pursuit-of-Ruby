

class TestGruffBar < GruffTestCase

def setup
    super
    @datasets = [
        [:Jimmy, [25, 36, 86, 39]],
        [:Charles, [80, 54, 67, 54]],
        [:Julie, [22, 29, 35, 38]],
    #[:Jane, [95, 95, 95, 90, 85, 80, 88, 100]],
    #[:Philip, [90, 34, 23, 12, 78, 89, 98, 88]],
    #["Arthur", [5, 10, 13, 11, 6, 16, 22, 32]],
    ]
  end

  def
    graph=Gruff::Bar.new(600)
    graph.title = 'Visual Multi-Line Bar Graph Test'
    graph.theme = Gruff::Themes::RAILS_KEYNOTE
    graph.write('test/output/bar_rails_keynote.png')
end