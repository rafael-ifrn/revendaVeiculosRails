module ApplicationHelper

	def bootstrap_erro(model, attribute)
		if model.errors.has_key? attribute
			content_tag(
					:span,
					model.errors[attribute].first,
					class: "help-block"
			)
		end
	end

	def bootstrap_textfield(model, attribute)
		content_tag(
			:div,
			content_tag(
				:label,
				attribute,
				class: "control-label", for: "#{model.model_name.singular}_#{attribute}"
			) +
			content_tag(
				:input,
				nil,
				class: "form-control", id: "#{model.model_name.singular}_#{attribute}", name: "#{model.model_name.singular}[#{attribute}]", value: model[:attribute]
			) +
			( (model.errors.has_key? attribute) ?

				content_tag(
					:span,
					nil,
					class: "help-block"
				) : ""),
			class: ["form-group", (model.errors.has_key? attribute ? "has_error" : "")	]
		)
	end

=begin

  <div class="form-group has-success">
    <label class="control-label" for="fabricante_descricao">Descrição</label><br>
    <input class="form-control" type="text" name="fabricante[descricao]" id="fabricante_descricao" />
  </div>
<div class="form-group has-success">
  <label class="control-label" for="inputSuccess1">Input with success</label>
  <input type="text" class="form-control" id="inputSuccess1" aria-describedby="helpBlock2">
  <span id="helpBlock2" class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span>
</div>
=end
end
