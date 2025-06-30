-- BORRADO PREVIO (para reiniciar los datos sin eliminar tablas)
DELETE FROM brand_category;
DELETE FROM brand;
DELETE FROM category;

-- INSERT CATEGORÍAS
INSERT INTO category (id, name) VALUES
  ('11111111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'Poleras'),
  ('11111111-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'Polerones'),
  ('11111111-cccc-cccc-cccc-cccccccccccc', 'Pantalones'),
  ('11111111-dddd-dddd-dddd-dddddddddddd', 'Jockeys'),
  ('11111111-eeee-eeee-eeee-eeeeeeeeeeee', 'Accesorios')
ON CONFLICT (id) DO NOTHING;



#Verificacion de datos

SELECT * FROM category;
SELECT * FROM brand;
SELECT * FROM brand_category;


-- INSERT MARCAS
INSERT INTO brand (id, name, logo_url) VALUES
  ('22222222-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'Marca A', 'https://logo1.cl'),
  ('22222222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'Marca B', 'https://logo2.cl'),
  ('22222222-cccc-cccc-cccc-cccccccccccc', 'Marca C', 'https://logo3.cl'),
  ('22222222-dddd-dddd-dddd-dddddddddddd', 'Marca D', 'https://logo4.cl'),
  ('22222222-eeee-eeee-eeee-eeeeeeeeeeee', 'Marca E', 'https://logo5.cl'),
  ('22222222-ffff-ffff-ffff-ffffffffffff', 'Marca F', 'https://logo6.cl')
ON CONFLICT (id) DO NOTHING;

-- INSERT RELACIÓN MARCA-CATEGORÍA
INSERT INTO brand_category (brand_id, category_id) VALUES
  ('22222222-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-aaaa-aaaa-aaaa-aaaaaaaaaaaa'),
  ('22222222-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-bbbb-bbbb-bbbb-bbbbbbbbbbbb'),
  ('22222222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '11111111-aaaa-aaaa-aaaa-aaaaaaaaaaaa'),
  ('22222222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '11111111-cccc-cccc-cccc-cccccccccccc'),
  ('22222222-cccc-cccc-cccc-cccccccccccc', '11111111-aaaa-aaaa-aaaa-aaaaaaaaaaaa'),
  ('22222222-cccc-cccc-cccc-cccccccccccc', '11111111-dddd-dddd-dddd-dddddddddddd'),
  ('22222222-dddd-dddd-dddd-dddddddddddd', '11111111-bbbb-bbbb-bbbb-bbbbbbbbbbbb'),
  ('22222222-dddd-dddd-dddd-dddddddddddd', '11111111-cccc-cccc-cccc-cccccccccccc'),
  ('22222222-eeee-eeee-eeee-eeeeeeeeeeee', '11111111-eeee-eeee-eeee-eeeeeeeeeeee'),
  ('22222222-ffff-ffff-ffff-ffffffffffff', '11111111-aaaa-aaaa-aaaa-aaaaaaaaaaaa'),
  ('22222222-ffff-ffff-ffff-ffffffffffff', '11111111-dddd-dddd-dddd-dddddddddddd'),
  ('22222222-ffff-ffff-ffff-ffffffffffff', '11111111-eeee-eeee-eeee-eeeeeeeeeeee')
ON CONFLICT DO NOTHING;  -- Esto requiere que tengas una UNIQUE constraint en (brand_id, category_id)

