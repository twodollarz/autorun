# Autorun

Autorun is a simple scripting helper module.  It allows you write a simple executable script per class easily.

## Usage

Autorun is a module which invokes 'run' method automatically.

* Implement an executable class and include Autorun.

```
    #!/usr/bin/env ruby
    require 'autorun'

    class DailyBatch
      include Autorun

      def run
        # ...
      end
    end
```

* Then execute it.

```
    $ ruby daily_batch.rb
```

* When you need to use other method name instead of 'run', use simply alias_method.

```
    class WorkerJob
      include Autorun

      def perform
        # ...
      end

      alias_method :run, :perform
    end
```

* Autorun does not provide other features such as option parser, please use appropriate gem like 'thor' or 'slop'.

## Contributing

1. Fork it ( http://github.com/twodollarz/autorun/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
