
var
  deku $ require :deku

var
  div $ deku.element.bind deku :div
  span $ deku.element.bind deku :span

console.log deku

var Comp $ {}
  :initialState $ \ ()
    return $ {}
      :x 0

  :onClick $ \ (setState)

  :render $ \ (component setState)
    var data component.props.data
    var x component.state.x

    var click $ \ ()
      setState $ {}
        :x $ + x 1

    return $ div ({} (:className :comp) (:onClick click))
      span null data.name
      span null x

var Page $ {}
  :render $ \ (component)
    var data $ {}
      :name :A
    return $ div ({} (:className :demo)) :demo
      deku.element Comp ({} (:data data))

var app $ deku.tree (deku.element Page)

deku.render app (document.querySelector :#app)
