# go through tutorials and clean and update

require 'yaml'

$basedir = Dir.pwd						
config = YAML.load_file("_config.yml")

config["tutorials"].each do |repo|
	name = repo.split('/').drop(1).join('')		
	Dir.chdir($basedir + "/tutorials")			
	if !Dir.exists?(name)								# clone tutorial repo
		`git clone https://github.com/#{repo}.git`
	end
	Dir.chdir($basedir + "/tutorials/" + name)			# drop into blotter dir	
	`git clean -f`										# remove untracked files, but keep directories
	`git reset --hard HEAD`								# bring back to head state
	`git pull origin master`							# git pull	

	# Check if license files exist
	if Dir.glob("LICENSE*").length == 0
		`cp ../../_layouts/CCby4.0.txt LICENSE`
	end

	if File.exists?("main.tex")							# build tutorial pdf if main.tex exists
		File.rename("main.tex", "#{name}.tex")
		`pdflatex #{name}.tex`									
		`bibtex #{name}`
		`pdflatex #{name}.tex`									
	end

	#{}`python ParseMdtoLatex.py -i README.md -t pandoctemplate.tex -L`
end

Dir.chdir($basedir)
`ruby _scripts/preprocess-tutorial-markdown.rb`
`ruby _scripts/generate-tutorial-licenses.rb`
`ruby _scripts/generate-tutorial-data.rb`
