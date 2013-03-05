module Helpers

  def js(path)
    %Q{<script src="#{path}"></script>}
  end

  def css(path)
    %Q{<link rel="stylesheet" type="text/css" href="#{path}" />}
  end

end
