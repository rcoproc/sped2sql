# -*- encoding: utf-8 -*-
module SPED2SQL
  module Pipeline
    module NormalizaSQL
      include Formatters

      def self.call(env)
        mapa = env[:mapa][env[:original].first]
        env[:final] = env[:original].zip(mapa).map do |dado, tipo|
          StringConverter.converter(dado, tipo)
        end
        env
      end
    end
  end
end
