import pytest

from descontos import calcular_desconto


def test_desconto_retorna_zero_para_valor_invalido():
    assert calcular_desconto(-1, True) == 0


def test_desconto_retorna_zero_para_valor_zero():
    assert calcular_desconto(0, False) == 0


def test_desconto_aplica_dez_por_cento_para_valor_minimo_positivo():
    assert calcular_desconto(0.01, False) == pytest.approx(0.009)


def test_desconto_aplica_vinte_por_cento_para_cliente_vip():
    assert calcular_desconto(100, True) == 80


def test_desconto_aplica_dez_por_cento_para_cliente_nao_vip():
    assert calcular_desconto(100, False) == 90