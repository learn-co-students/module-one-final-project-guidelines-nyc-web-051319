class Printer

    def self.dragon
        Catpix::print_image "./app/images/dragon.png"
    end

    def self.sewer
        Catpix::print_image "./app/images/sewer.png"
    end

    def self.train
        Catpix::print_image "./app/images/train.png"
    end

    def self.volcano
        Catpix::print_image "./app/images/volcano.png"
    end

    def self.ice
        Catpix::print_image "./app/images/ice.png"
    end

    def self.flatiron
        Catpix::print_image "./app/images/flatiron.png"
    end

    def self.tomb
        Catpix::print_image "./app/images/tomb.png"
    end

    def self.logo
        Catpix::print_image "./app/images/LoR.png",  :limit_x => 2.0, :limit_y => 2.0
    end
end