# mostly ripped off from https://github.com/ryanb/dotfiles
require 'rake'
require 'erb'

task default: [:install]

desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  files = Dir['*'] - %w[Rakefile README.rdoc LICENSE]
  files.each do |file|
    system %Q{mkdir -p "$HOME/.#{File.dirname(file)}"} if file =~ /\//
    if File.exist?(File.join(ENV['HOME'], ".#{file.sub(/\.erb$/, '')}"))
      if File.identical? file, File.join(ENV['HOME'], ".#{file.sub(/\.erb$/, '')}")
        puts "identical ~/.#{file.sub(/\.erb$/, '')}"
      elsif replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file.sub(/\.erb$/, '')}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file.sub(/\.erb$/, '')}"
        end
      end
    else
      link_file(file)
    end
  end
end

namespace "vim" do
  desc "install the dot files into user's home directory"
  task :setup do
    tmp_dir = File.expand_path "~/.tmp"
    Dir.mkdir tmp_dir unless Dir.exist? tmp_dir

    vundle_dir = File.expand_path "~/.vim/bundle/Vundle.vim"
    unless Dir.exist? vundle_dir
      system "git clone https://github.com/gmarik/Vundle.vim.git #{vundle_dir}"
      system "vim +PluginInstall +qall"
    end
  end
end

def replace_file(file)
  system %Q{rm -rf "$HOME/.#{file.sub(/\.erb$/, '')}"}
  link_file(file)
end

def link_file(file)
  if file =~ /.erb$/
    puts "generating ~/.#{file.sub(/\.erb$/, '')}"
    File.open(File.join(ENV['HOME'], ".#{file.sub(/\.erb$/, '')}"), 'w') do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  else
    puts "linking ~/.#{file}"
    system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
  end
end
