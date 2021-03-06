{{!
	© 2016 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
}}

<ul class="header-menu-level1">
	{{#each categories}}
	<li>
		<a class="{{class}}{{#if @last}} header-menu-level1-anchor-last{{/if}}" {{objectToAtrributes this}} {{#if categories}}data-toggle="dropdown"{{/if}}>
		{{text}}
		</a>
		{{#if categories}}
		<ul class="header-menu-level-container">
			<li class="header-menu-level-categories">
				<ul class="header-menu-level2">
					{{#each categories}}
					<li>
						<a class="{{class}}" {{objectToAtrributes this}}>{{text}}</a>

						{{#if categories}}
						<ul class="header-menu-level3">
							{{#each categories}}
							<li>
								<a class="{{class}}" {{objectToAtrributes this}}>{{text}}</a>
							</li>
							{{/each}}
						</ul>
						{{/if}}
					</li>
					{{/each}}
				</ul>
			</li>
		</ul>
		{{/if}}
	</li>
	{{/each}}
	<li class="header-navlinks-end"></li>
</ul>
