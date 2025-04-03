ARG ODOO_VERSION="9.0"
FROM druidoo/foodcoops-posbox:$ODOO_VERSION
USER odoo
RUN sed -i -e "s/ttyACM0/ttypTPE/g" /home/odoo/odoo/addons/hw_telium_payment_terminal/controllers/main.py
COPY odoo.conf /home/odoo/odoo/odoo.conf
USER root
