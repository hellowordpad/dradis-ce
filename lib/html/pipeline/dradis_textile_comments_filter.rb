module HTML
  class Pipeline
    class DradisTextileCommentsFilter < TextFilter
      def call
        "<div>#{RedCloth.new(@text, [:filter_html, :no_span_caps]).to(HTML::CommentsTextileFormatter)}</div>"
      end
    end
  end
end