all:pdf-es pdf-us html-es html-es

# Random condition to not to match any other condition
# Since publicant blank condition means "met all conditions", we need to
# specify a random enough one to not to include undesired parts

# Macro to build docbook
# Params:
#   (1) => Format (pdf, html)
#   (2) => Language (es-Es, en-US)
#   (3) => Config file
publican_build = publican build --formats $(1) --langs $(2) --config $(3)

pdf-us:
	$(call publican_build,pdf,"en-US",publican-en-US.cfg)

html-us:
	$(call publican_build,html,"en-US",publican-en-US.cfg)

pdf-es:
	$(call publican_build,pdf,"es-ES",publican-es-ES.cfg)

pdf-malware-es:
	$(call publican_build,pdf,"es-ES",publican-malware-es-ES.cfg)

html-es:
	$(call publican_build,html,"es-ES",publican-es-ES.cfg)

txt-es:
	$(call publican_build,txt,"es-ES",publican-es-ES.cfg)
