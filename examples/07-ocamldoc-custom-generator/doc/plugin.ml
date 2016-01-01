open Odoc_info

module Generator (G : Odoc_html.Html_generator) =
struct
  class html =
    object(self)
      inherit G.html as html

      method title =
        let t = "Hello from the custom generator" in
        Global.title := Some t;
        t
        
    end
end;;

let _ = Odoc_args.extend_html_generator (module Generator : Odoc_gen.Html_functor);;
